//
//  DayCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 9/5/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class DayCell: UITableViewCell, UITextFieldDelegate {
        
    @IBOutlet weak var numSmoothiesPerDay: UITextField!
    
    var schedulerTableView: UITableView?
    
    @IBAction func textfieldChange(_ sender: UITextField) {
        let num: Int? = Int(sender.text!)
        if num != nil {
            if let rowIndex: Int = schedulerTableView?.indexPath(for: self)?.section {
                if rowIndex == 0 {
                    Scheduler.numSmoothiesDict["Monday"] = num!
                } else if rowIndex == 1 {
                    Scheduler.numSmoothiesDict["Tuesday"] = num!
                } else if rowIndex == 2 {
                    Scheduler.numSmoothiesDict["Wednesday"] = num!
                } else if rowIndex == 3 {
                    Scheduler.numSmoothiesDict["Thursday"] = num!
                } else if rowIndex == 4 {
                    Scheduler.numSmoothiesDict["Friday"] = num!
                } else if rowIndex == 5 {
                    Scheduler.numSmoothiesDict["Saturday"] = num!
                } else if rowIndex == 6 {
                    Scheduler.numSmoothiesDict["Sunday"] = num!
                }
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.numSmoothiesPerDay.delegate = self
        self.numSmoothiesPerDay.returnKeyType = .done
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
