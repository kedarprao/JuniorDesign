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
        lactose.backgroundColor = UIColor.lightGray
        pinenut.backgroundColor = UIColor.lightGray
        gluten.backgroundColor = UIColor.lightGray
        hazelnut.backgroundColor = UIColor.lightGray
        peanut.backgroundColor = UIColor.lightGray

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lactose: UIButton!
    @IBOutlet weak var pinenut: UIButton!
    @IBOutlet weak var gluten: UIButton!
    @IBOutlet weak var hazelnut: UIButton!
    @IBOutlet weak var peanut: UIButton!
    
    @IBAction func lactose(_ sender: Any) {
        if (lactose.backgroundColor == UIColor.darkGray) {
            lactose.backgroundColor = UIColor.lightGray
            FavoriteFruits.dietaryRestrictions.removeAll(where: {$0 == "Lactose Intolerant" })
        } else {
            lactose.backgroundColor = UIColor.darkGray
            FavoriteFruits.dietaryRestrictions.append("Lactose Intolerant")
        }
    }
    
    @IBAction func pinenut(_ sender: Any) {
        if (pinenut.backgroundColor == UIColor.darkGray) {
            pinenut.backgroundColor = UIColor.lightGray
            FavoriteFruits.dietaryRestrictions.removeAll(where: {$0 == "Pine Nut" })
        } else {
            pinenut.backgroundColor = UIColor.darkGray
            FavoriteFruits.dietaryRestrictions.append("Pine Nut")
        }
    }
    
    @IBAction func gluten(_ sender: Any) {
        if (gluten.backgroundColor == UIColor.darkGray) {
            gluten.backgroundColor = UIColor.lightGray
        FavoriteFruits.dietaryRestrictions.removeAll(where: {$0 == "Gluten Free" })
        } else {
            gluten.backgroundColor = UIColor.darkGray
            FavoriteFruits.dietaryRestrictions.append("Gluten Free")
        }
    }
    
    @IBAction func hazelnut(_ sender: Any) {
        if (hazelnut.backgroundColor == UIColor.darkGray) {
            hazelnut.backgroundColor = UIColor.lightGray
            FavoriteFruits.dietaryRestrictions.removeAll(where: {$0 == "Hazel Nut" })
        } else {
            hazelnut.backgroundColor = UIColor.darkGray
            FavoriteFruits.dietaryRestrictions.append("Hazel Nut")
        }
    }
    
    @IBAction func peanut(_ sender: Any) {
        if (peanut.backgroundColor == UIColor.darkGray) {
            peanut.backgroundColor = UIColor.lightGray
            FavoriteFruits.dietaryRestrictions.removeAll(where: {$0 == "Peanut" })
        } else {
            peanut.backgroundColor = UIColor.darkGray
            FavoriteFruits.dietaryRestrictions.append("Peanut")
        }
    }

    
}
