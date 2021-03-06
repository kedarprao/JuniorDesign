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
    @IBOutlet weak var ingredientSlider: UISlider!
    
    var favoriteFruits: FavoriteFruits?
    let step: Float = 1
    @IBAction func ingredientSliderChanged(_ sender: UISlider) {
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
    favoriteFruits?.ingredientsVal[self.ingredientLabel.text!] = sender.value
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
