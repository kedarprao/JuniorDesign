//
//  SmoothieDayCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 9/19/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class SmoothieDayCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup() {
        let tap = UITapGestureRecognizer(
            target: self,
            action: #selector(tapped(_:))
        )
        tap.numberOfTapsRequired = 1
        self.addGestureRecognizer(tap)
    }
    
    @objc func tapped(_ sender: UITapGestureRecognizer) {
        //segue to new viewcontroller
    }
    
    /* IBoutlet tap gesture recognizer {
     prepare for segue to view controller that has information about the smoothie
     maybe pass in the data that we got for this day's smoothie?
     SmoothieVC.ingredients = ingredients data
     }
     */
    
}
