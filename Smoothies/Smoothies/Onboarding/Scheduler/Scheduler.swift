//
//  Scheduler.swift
//  Smoothies
//
//  Created by Kedar Rao on 4/19/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

private let kDAYCELLID = "DAYCELL"

class Scheduler: UIViewController {
    
    let days: [String] = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    static var numSmoothiesDict: [String: Int] = [:]
    
    @IBOutlet weak var smoothiesRemainingLabel: UILabel!
    @IBOutlet weak var schedulerTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        smoothiesRemainingLabel.text = "Select for a total of \(selectedSmoothies.count) Smoothies"
        setupUI()
    }
    
    func setupUI() {
        schedulerTableView.delegate = self
        schedulerTableView.dataSource = self
        
        schedulerTableView.register(
            UINib.init(nibName: "DayCell", bundle: Bundle.main),
            forCellReuseIdentifier: kDAYCELLID
        )
    }
    
    @IBAction func onNext(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            self.performSegue(withIdentifier: "SegueToHomeVC", sender: self)
        })
    }
    
}

extension Scheduler: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return days.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kDAYCELLID) as! DayCell
        cell.schedulerTableView = schedulerTableView
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
}

extension Scheduler: UITableViewDelegate {    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return days[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }

}
