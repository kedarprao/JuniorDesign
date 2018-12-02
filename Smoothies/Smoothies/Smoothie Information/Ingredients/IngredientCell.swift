//
//  IngredientCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 12/1/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class IngredientCell: UITableViewCell {

    @IBOutlet weak var ingredientLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ingredientLabel.text = "YOOOO"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
