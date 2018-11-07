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
        cell.setup()
        return cell
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

