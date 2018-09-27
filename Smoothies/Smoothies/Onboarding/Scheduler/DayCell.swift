//
//  DayCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 9/5/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class DayCell: UITableViewCell {
    
    @IBOutlet weak var dayCellLabel: UILabel!
    
    @IBOutlet weak var smoothieSwitch: UISwitch!
    
    @IBOutlet weak var numSmoothiesPerDay: UITextField!
    
    var schedulerTableView: UITableView?
    
    func update() {
        smoothieSwitch.isOn = false
    }
    

    @IBAction func textfieldChange(_ sender: UITextField) {
        let num: Int? = Int(sender.text!)
        if num != nil {
            if let rowIndex: Int = schedulerTableView?.indexPath(for: self)?.section {
                if rowIndex == 0 {
                    numSmoothiesArr[0] = num!
                } else if rowIndex == 1 {
                    numSmoothiesArr[1] = num!
                } else if rowIndex == 2 {
                    numSmoothiesArr[2] = num!
                } else if rowIndex == 3 {
                    numSmoothiesArr[3] = num!
                } else if rowIndex == 4 {
                    numSmoothiesArr[4] = num!
                } else if rowIndex == 5 {
                    numSmoothiesArr[5] = num!
                } else if rowIndex == 6 {
                    numSmoothiesArr[6] = num!
                }
            }
        }
    }
}
