//
//  DietaryRestrictions.swift
//  Smoothies
//
//  Created by Francis Wethington on 4/13/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class DietaryRestrictions: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        lactose.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lactose: UIButton!
    
    @IBAction func lactose(_ sender: Any) {
        if (lactose.backgroundColor == UIColor.white) {
            lactose.backgroundColor = UIColor.lightGray
        } else {
            lactose.backgroundColor = UIColor.white
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
