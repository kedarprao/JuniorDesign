//
//  GroceryListCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 12/2/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class GroceryListCell: UITableViewCell {

    @IBOutlet weak var groceryListLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
