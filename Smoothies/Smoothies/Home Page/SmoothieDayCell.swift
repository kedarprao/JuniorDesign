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
    
    @IBOutlet weak var smoothieName: UILabel!
    
    func setup() {
        let tap = UITapGestureRecognizer(
            target: self,
            action: #selector(tapped(_:))
        )
        tap.numberOfTapsRequired = 1
        self.addGestureRecognizer(tap)
    }
    
    @objc func tapped(_ sender: UITapGestureRecognizer) {
        guard let smoothieID: String = smoothieName.text else {
            return
        }
        let url = URL(string: "https://enigmatic-shelf-77123.herokuapp.com/recipe/\(smoothieID)")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {                                                 // check for fundamental networking error
                print("error=\(String(describing: error))")
                return
            }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(String(describing: response))")
            }
            
            let responseString = String(data: data, encoding: .utf8)
            print("responseString = \(String(describing: responseString))")
        }
        task.resume()
    }
    
    /* IBoutlet tap gesture recognizer {
     prepare for segue to view controller that has information about the smoothie
     maybe pass in the data that we got for this day's smoothie?
     SmoothieVC.ingredients = ingredients data
     }
     */
    
}
