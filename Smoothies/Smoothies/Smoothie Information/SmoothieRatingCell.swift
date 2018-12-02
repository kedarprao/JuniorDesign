//
//  SmoothieRatingCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/11/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class SmoothieRatingCell: UITableViewCell {

    @IBOutlet weak var smoothieRatingLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
