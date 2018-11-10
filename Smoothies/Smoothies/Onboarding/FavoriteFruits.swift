//
//  FavoriteFruits.swift
//  Smoothies
//
//  Created by Francis Wethington on 4/13/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

private let fileName = "ingredient_list"
private let kINGREDIENTSCELLID = "INGREDIENTSCELL"
var smoothies: [Smoothie] = []

class FavoriteFruits: UIViewController {
    
    var ingredients: [String] = []
    var ingredientsDict: [String : [String: Float]] = [:]
    var ingredientsVal: [String : Float] = [:]
    
    //[("Banana",1.0),("Honey",-1.0)]
    @IBOutlet weak var IngredientsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let path = Bundle.main.path(forResource: fileName, ofType: "txt") {// file path for file "data.txt"
            do {
                let content = try String(contentsOfFile: path, encoding: .utf8)
                ingredients = content.components(separatedBy: "\r\n")
            } catch let error as NSError {
                print("Ooops! let path = (NSTemp... did not work: \(error)")
            }
        }
        // Do any additional setup after loading the view.
        
        setupUI()
    }
    
    func setupUI() {
        IngredientsTableView.delegate = self
        IngredientsTableView.dataSource = self
        IngredientsTableView.register(UINib.init(nibName: "IngredientsCell", bundle: Bundle.main), forCellReuseIdentifier: kINGREDIENTSCELLID)
    }
    
    @IBAction func FavoredIngredients(_ sender: UIButton) {
//        let numSections = IngredientsTableView.numberOfSections;
//        for section in 0 ..< numSections {
//            let numRows = IngredientsTableView.numberOfRows(inSection: section)
//            for row in 0 ..< numRows {
//                let cell = IngredientsTableView.cellForRow(at: IndexPath(row: row, section: section))
//                let ingredientCell = cell as! IngredientsCell
//                if let ingredientText = ingredientCell.ingredientLabel.text {
//                    ingredientsVal[ingredientText] = ingredientCell.ingredientSlider.value
//                }
//            }
//        }
        //ingredientsDict["ingredients"] = ingredientsVal
        let url = URL(string: "https://enigmatic-shelf-77123.herokuapp.com/ingredients")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = "ingredients=\(ingredientsVal))"
        request.httpBody = postString.data(using: .utf8)!
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
            
//            let JSON = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
//            if let JSON = JSON as? [String: AnyObject] {
//                //if let smoothieName = JSON["title"] as? Any,
//                if let smoothieID = JSON["recipe_id"] {
//                    let smoothieObject: Smoothie = Smoothie.init(smoothieID: smoothieID as? Int ?? 7)
//                    smoothies.append(smoothieObject)
//                }
//            }
        }
        task.resume()
        
    }
    
}

extension FavoriteFruits: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kINGREDIENTSCELLID) as! IngredientsCell
        cell.ingredientLabel.text = ingredients[indexPath.row]
        ingredientsVal[ingredients[indexPath.row]] = cell.ingredientSlider.value
        cell.ingredientsVal = ingredientsVal
        return cell
    }
    
    
}

extension FavoriteFruits: UITableViewDelegate {
    
}
