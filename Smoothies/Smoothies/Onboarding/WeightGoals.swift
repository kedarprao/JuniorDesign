//
//  WeightGoals.swift
//  Smoothies
//
//  Created by Francis Wethington on 4/13/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class WeightGoals: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        gain.backgroundColor = UIColor.lightGray
        lose.backgroundColor = UIColor.lightGray
        maintain.backgroundColor = UIColor.lightGray
        none.backgroundColor = UIColor.lightGray
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var gain: UIButton!
    @IBOutlet weak var lose: UIButton!
    @IBOutlet weak var maintain: UIButton!
    @IBOutlet weak var none: UIButton!
    
    @IBAction func gain(_ sender: Any) {
        if (gain.backgroundColor == UIColor.darkGray) {
            gain.backgroundColor = UIColor.lightGray
        } else {
            gain.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func lose(_ sender: Any) {
        if (lose.backgroundColor == UIColor.darkGray) {
            lose.backgroundColor = UIColor.lightGray
        } else {
            lose.backgroundColor = UIColor.darkGray
        }
    }

    @IBAction func maintain(_ sender: Any) {
        if (maintain.backgroundColor == UIColor.darkGray) {
            maintain.backgroundColor = UIColor.lightGray
        } else {
            maintain.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func none(_ sender: Any) {
        if (none.backgroundColor == UIColor.darkGray) {
            none.backgroundColor = UIColor.lightGray
        } else {
            none.backgroundColor = UIColor.darkGray
        }
    }
}
