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

class FavoriteFruits: UIViewController {
    
    var ingredients: [String] = []
    var favoredIngredients: [String] = []
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
        for cell in self.IngredientsTableView.visibleCells {
            let ingredientCell = cell as! IngredientsCell
            if (ingredientCell.ingredientSelected.isOn) {
                favoredIngredients.append(ingredientCell.ingredientLabel.text ?? "")
            }
        }
        let url = URL(string: "https://enigmatic-shelf-77123.herokuapp.com/ingredients")!
        var request = URLRequest(url: url)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = "ingredients=\(favoredIngredients)"
        request.httpBody = postString.data(using: .utf8)
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
    
    
}

extension FavoriteFruits: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kINGREDIENTSCELLID) as! IngredientsCell
        cell.ingredientLabel.text = ingredients[indexPath.row]
        cell.ingredientSelected.isOn = false
        return cell
    }
    
    
}

extension FavoriteFruits: UITableViewDelegate {
    
}
