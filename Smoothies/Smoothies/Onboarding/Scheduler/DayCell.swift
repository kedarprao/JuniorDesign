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
    
    func update() {
        smoothieSwitch.isOn = false
    }
}
