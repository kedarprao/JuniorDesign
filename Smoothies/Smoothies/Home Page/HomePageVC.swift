//
//  HomePageVC.swift
//  Smoothies
//
//  Created by Kedar Rao on 9/19/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit
;
private let kSmoothieDayCellID = "SMOOTHIEDAYCELL"
class HomePageVC: UIViewController {
    
    let days: [String] = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    var dayCell: DayCell?
    var localSelectedSmoothies = selectedSmoothies
    
    
    static var smoothieInformation: SmoothieInformaton?
    
    @IBOutlet weak var HomePageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
        //dayCell?.numSmoothiesArr[0]// num smoothies on monday
    }
    
    override func viewWillAppear(_ animated: Bool) {
        localSelectedSmoothies = selectedSmoothies
    }
    
    func setupUI() {
        HomePageTableView.delegate = self
        HomePageTableView.dataSource = self
        
        HomePageTableView.register(
            UINib.init(nibName: "SmoothieDayCell", bundle: Bundle.main),
            forCellReuseIdentifier: kSmoothieDayCellID
        )
    }
}

extension HomePageVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return Scheduler.numSmoothiesDict["Monday"] ?? 0
        } else if section == 1{
            return Scheduler.numSmoothiesDict["Tuesday"] ?? 0
        } else if section == 2{
            return Scheduler.numSmoothiesDict["Wednesday"] ?? 0
        } else if section == 3{
            return Scheduler.numSmoothiesDict["Thursday"] ?? 0
        } else if section == 4{
            return Scheduler.numSmoothiesDict["Friday"] ?? 0
        } else if section == 5{
            return Scheduler.numSmoothiesDict["Saturday"] ?? 0
        } else if section == 6 {
            return Scheduler.numSmoothiesDict["Sunday"] ?? 0
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kSmoothieDayCellID) as! SmoothieDayCell
        let smoothie = localSelectedSmoothies[0]
        localSelectedSmoothies.remove(at: 0)
        cell.smoothieName.text = smoothie.title
        cell.smoothieID = smoothie.recipe_id
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let smoothieCell = tableView.cellForRow(at: indexPath) as! SmoothieDayCell
        guard let recipe_id: Int = smoothieCell.smoothieID else {
            return
        }
        let url = URL(string: "https://enigmatic-shelf-77123.herokuapp.com/recipe/\(recipe_id)")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {                                                 // check for fundamental networking error
                print("error=\(String(describing: error))")
                return
            }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(String(describing: response))")
            }
            
            let responseString = String(data: data, encoding: .utf8)
            print("responseString = \(String(describing: responseString))")
            
            let decoder = JSONDecoder()
            do {
                let smoothieInformationWrapper = try decoder.decode(SmoothieInformationWrapper.self, from: data)
                HomePageVC.smoothieInformation = smoothieInformationWrapper.recipe
            } catch {
                print("error trying to convert data to JSON")
                print(error)
            }
        }
        task.resume()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
            self.performSegue(withIdentifier: "SegueToSmoothieInfo", sender: self)
        })

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return days.count // 7 days of the week
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // puts the title (day) for each section
        return days[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
}

