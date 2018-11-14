//
//  WeightGoals.swift
//  Smoothies
//
//  Created by Francis Wethington on 4/13/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class WeightGoals: UIViewController {
    
    var favoriteFruits: FavoriteFruits = FavoriteFruits()

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
            lose.isEnabled = true
            maintain.isEnabled = true
            none.isEnabled = true

        } else {
            gain.backgroundColor = UIColor.darkGray
            lose.isEnabled = false
            maintain.isEnabled = false
            none.isEnabled = false
            favoriteFruits.weightGoals = "Gain Weight"
        }
    }
    
    @IBAction func lose(_ sender: Any) {
        if (lose.backgroundColor == UIColor.darkGray) {
            lose.backgroundColor = UIColor.lightGray
            gain.isEnabled = true
            maintain.isEnabled = true
            none.isEnabled = true

        } else {
            lose.backgroundColor = UIColor.darkGray
            gain.isEnabled = false
            maintain.isEnabled = false
            none.isEnabled = false
            favoriteFruits.weightGoals = "Lose Weight"
        }
    }

    @IBAction func maintain(_ sender: Any) {
        if (maintain.backgroundColor == UIColor.darkGray) {
            maintain.backgroundColor = UIColor.lightGray
            lose.isEnabled = true
            gain.isEnabled = true
            none.isEnabled = true

        } else {
            maintain.backgroundColor = UIColor.darkGray
            lose.isEnabled = false
            gain.isEnabled = false
            none.isEnabled = false
            favoriteFruits.weightGoals = "Maintain Weight"
        }
    }
    
    @IBAction func none(_ sender: Any) {
        if (none.backgroundColor == UIColor.darkGray) {
            none.backgroundColor = UIColor.lightGray
            lose.isEnabled = true
            maintain.isEnabled = true
            gain.isEnabled = true

        } else {
            none.backgroundColor = UIColor.darkGray
            lose.isEnabled = false
            maintain.isEnabled = false
            gain.isEnabled = false
            favoriteFruits.weightGoals = "None"
        }
    }
    
}
