//
//  SelectSmoothieVC.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/18/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

private let kSMOOTHIESLECTIONCELLID = "SMOOTHIESELECTIONCELLID"

var selectedSmoothies: [Smoothie] = []

class SelectSmoothieVC: UIViewController {
    
    @IBOutlet weak var AllSmoothiesTableView: UITableView!
    @IBOutlet weak var totalBudgetLabel: UILabel!
    
    static var recipeIDs: [String: Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        setupUI()
    }
    
    
    
    func setupUI() {
        AllSmoothiesTableView.delegate = self
        AllSmoothiesTableView.dataSource = self
        AllSmoothiesTableView.register(UINib.init(nibName: "SelectSmoothieCell", bundle: Bundle.main), forCellReuseIdentifier: kSMOOTHIESLECTIONCELLID)
        totalBudgetLabel.text = "Total Cost For The Week: $0.00"
    }
    
}

extension SelectSmoothieVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allSmoothies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kSMOOTHIESLECTIONCELLID) as! SelectSmoothieCell
        cell.AllSmoothiesTableView = AllSmoothiesTableView
        cell.selectSmoothieVC = self
        cell.smoothie = allSmoothies[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
}

extension SelectSmoothieVC: UITableViewDelegate {
    
}

