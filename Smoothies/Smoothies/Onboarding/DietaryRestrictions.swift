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
        vegan.backgroundColor = UIColor.lightGray
        vegetarian.backgroundColor = UIColor.lightGray
        sugarfree.backgroundColor = UIColor.lightGray
        soyfree.backgroundColor = UIColor.lightGray
        kosher.backgroundColor = UIColor.lightGray

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
    @IBOutlet weak var vegan: UIButton!
    @IBOutlet weak var vegetarian: UIButton!
    @IBOutlet weak var sugarfree: UIButton!
    @IBOutlet weak var soyfree: UIButton!
    @IBOutlet weak var kosher: UIButton!
    
    @IBAction func lactose(_ sender: Any) {
        if (lactose.backgroundColor == UIColor.darkGray) {
            lactose.backgroundColor = UIColor.lightGray
        } else {
            lactose.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func pinenut(_ sender: Any) {
        if (pinenut.backgroundColor == UIColor.darkGray) {
            pinenut.backgroundColor = UIColor.lightGray
        } else {
            pinenut.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func gluten(_ sender: Any) {
        if (gluten.backgroundColor == UIColor.darkGray) {
            gluten.backgroundColor = UIColor.lightGray
        } else {
            gluten.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func hazelnut(_ sender: Any) {
        if (hazelnut.backgroundColor == UIColor.darkGray) {
            hazelnut.backgroundColor = UIColor.lightGray
        } else {
            hazelnut.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func peanut(_ sender: Any) {
        if (peanut.backgroundColor == UIColor.darkGray) {
            peanut.backgroundColor = UIColor.lightGray
        } else {
            peanut.backgroundColor = UIColor.darkGray
        }
    }

    @IBAction func vegan(_ sender: Any) {
        if (vegan.backgroundColor == UIColor.darkGray) {
            vegan.backgroundColor = UIColor.lightGray
        } else {
            vegan.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func vegetarian(_ sender: Any) {
        if (vegetarian.backgroundColor == UIColor.darkGray) {
            vegetarian.backgroundColor = UIColor.lightGray
        } else {
            vegetarian.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func sugarfree(_ sender: Any) {
        if (sugarfree.backgroundColor == UIColor.darkGray) {
            sugarfree.backgroundColor = UIColor.lightGray
        } else {
            sugarfree.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func soyfree(_ sender: Any) {
        if (soyfree.backgroundColor == UIColor.darkGray) {
            soyfree.backgroundColor = UIColor.lightGray
        } else {
            soyfree.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func kosher(_ sender: Any) {
        if (kosher.backgroundColor == UIColor.darkGray) {
            kosher.backgroundColor = UIColor.lightGray
        } else {
            kosher.backgroundColor = UIColor.darkGray
        }
    }
}
