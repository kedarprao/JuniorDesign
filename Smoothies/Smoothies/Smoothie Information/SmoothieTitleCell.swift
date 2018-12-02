//
//  SmoothieTitleCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/11/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class SmoothieTitleCell: UITableViewCell {

    @IBOutlet weak var smoothieImage: UIImageView!
    var imageURL: String? {
        didSet {
            if let url = URL(string: imageURL ?? "") {
                let data = try? Data(contentsOf: url)
                smoothieImage.image = UIImage(data: data!)
            }
        }
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
