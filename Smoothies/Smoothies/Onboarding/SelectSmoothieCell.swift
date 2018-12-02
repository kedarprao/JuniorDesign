//
//  SelectSmoothieCell.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/18/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

var groceryList: GroceryList?

class SelectSmoothieCell: UITableViewCell {

    var AllSmoothiesTableView: UITableView?
    var selectSmoothieVC: SelectSmoothieVC?
    var smoothie: Smoothie? {
        didSet {
            setupCell()
        }
    }
    @IBOutlet weak var smoothieTitle: UILabel!
    
    @IBOutlet weak var numberOfSmoothies: UITextField!
    
    @IBAction func numSmoothiesChanged(_ sender: UITextField) {
        if let num: Int = Int(sender.text!), let aSmoothie: Smoothie = smoothie {
            selectedSmoothies.removeAll(where: {$0.title == aSmoothie.title})
            SelectSmoothieVC.recipeIDs[String(describing: aSmoothie.recipe_id)] = num
            if (num != 0) {
                for _ in 1...num {
                    selectedSmoothies.append(aSmoothie)
                }
            }

        }
        let url = URL(string: "https://enigmatic-shelf-77123.herokuapp.com/cost")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = "recipes=\(SelectSmoothieVC.recipeIDs)"
        request.httpBody = postString.data(using: .utf8)!
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("error=\(String(describing: error))")
                return
            }
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(String(describing: response))")
            }
            
            let responseString = String(data: data, encoding: .utf8)
            print("responseString = \(String(describing: responseString))")
            
            let decoder = JSONDecoder()
            do {
                let gL = try decoder.decode(GroceryList.self, from: data)
                groceryList = gL
            } catch {
                print("error trying to convert data to JSON")
                print(error)
            }
        }
        task.resume()
        selectSmoothieVC?.totalBudgetLabel.text = "Total Cost For The Week: $\(String(format: "%.2f", groceryList?.total ?? 0))"
    }
    
    func setupCell() {
        if let smoothieName: String = smoothie?.title {
           smoothieTitle.text = smoothieName
        }
        numberOfSmoothies.text = "0"
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
