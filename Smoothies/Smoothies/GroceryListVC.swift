//
//  GroceryListVC.swift
//  
//
//  Created by Kedar Rao on 12/2/18.
//

import UIKit

private let kGROCERYLISTCELLID = "GROCERYLISTCELLID"

class GroceryListVC: UIViewController {

    @IBOutlet weak var GroceryListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GroceryListTableView.delegate = self
        GroceryListTableView.dataSource = self
        // Do any additional setup after loading the view.
        GroceryListTableView.register(UINib.init(nibName: "GroceryListCell", bundle: Bundle.main), forCellReuseIdentifier: kGROCERYLISTCELLID)
    }

}


extension GroceryListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryList?.cost.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var groceryArr:[String] = []
        if let groceryListKeys = groceryList?.cost.keys {
            for key in groceryListKeys {
                if let amount = groceryList?.cost[key] {
                    groceryArr.append("\(key) - \(amount) oz")

                }
            }
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: kGROCERYLISTCELLID) as! GroceryListCell
        cell.groceryListLabel.text = groceryArr[indexPath.row]
        return cell
    }
    
    
}
