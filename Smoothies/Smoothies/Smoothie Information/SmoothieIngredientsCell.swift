//
//  SmoothieIngredientsCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/11/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

private let kINGREDIENTCELLID = "INGREDIENTCELLID"

class SmoothieIngredientsCell: UITableViewCell {

    
    @IBOutlet weak var ingredientLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
