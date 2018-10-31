//
//  IngredientsCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 10/31/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class IngredientsCell: UITableViewCell {

    @IBOutlet weak var ingredientLabel: UILabel!
    @IBOutlet weak var ingredientSelected: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if(ingredientSelected.isOn) {
            ingredientSelected.isOn = false
        } else {
            ingredientSelected.isOn = true
        }
        // Configure the view for the selected state
    }
    
}
