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
var numSmoothiesArr: [Int] = [0, 0, 0, 0, 0, 0, 0]

class HomePageVC: UIViewController {
    
    let days: [String] = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    var dayCell: DayCell?;    
    
    var smoothie = smoothies
    
    @IBOutlet weak var HomePageTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
        //dayCell?.numSmoothiesArr[0]// num smoothies on monday
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
        /* get data from Scheduler.swift for how many smoothies a day and put it in here for each section.
        if section == 0 (Monday) {
        return num
         */
        if section == 0 {
            return numSmoothiesArr[0]
        } else if section == 1{
            return numSmoothiesArr[1]
        } else if section == 2{
            return numSmoothiesArr[2]
        } else if section == 3{
            return numSmoothiesArr[3]
        } else if section == 4{
            return numSmoothiesArr[4]
        } else if section == 5{
            return numSmoothiesArr[5]
        } else if section == 6 {
            return numSmoothiesArr[6]
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kSmoothieDayCellID) as! SmoothieDayCell
        cell.smoothieName.text = "7"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let smoothieCell = tableView.cellForRow(at: indexPath) as! SmoothieDayCell
        guard let recipe_id: String = smoothieCell.smoothieName.text else {
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
                var smoothieInformation = try decoder.decode(SmoothieInformationWrapper.self, from: data)
                print("==================")
                print(smoothieInformation)
            } catch {
                print("error trying to convert data to JSON")
                print(error)
            }
        }
        task.resume()
        
        self.performSegue(withIdentifier: "SegueToSmoothieInfo", sender: self)
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
        return 100
    }
}

