//
//  FavoriteFruits.swift
//  Smoothies
//
//  Created by Francis Wethington on 4/13/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class FavoriteFruits: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        strawberry.backgroundColor = UIColor.lightGray
        watermelon.backgroundColor = UIColor.lightGray
        blueberry.backgroundColor = UIColor.lightGray
        orange.backgroundColor = UIColor.lightGray
        raspberry.backgroundColor = UIColor.lightGray
        bananas.backgroundColor = UIColor.lightGray
        pineapple.backgroundColor = UIColor.lightGray
        mango.backgroundColor = UIColor.lightGray
        blackberry.backgroundColor = UIColor.lightGray
        cherry.backgroundColor = UIColor.lightGray

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var strawberry: UIButton!
    @IBOutlet weak var watermelon: UIButton!
    @IBOutlet weak var blueberry: UIButton!
    @IBOutlet weak var orange: UIButton!
    @IBOutlet weak var raspberry: UIButton!
    @IBOutlet weak var bananas: UIButton!
    @IBOutlet weak var pineapple: UIButton!
    @IBOutlet weak var mango: UIButton!
    @IBOutlet weak var blackberry: UIButton!
    @IBOutlet weak var cherry: UIButton!
    
    @IBAction func strawberry(_ sender: Any) {
        if (strawberry.backgroundColor == UIColor.darkGray) {
            strawberry.backgroundColor = UIColor.lightGray;
        } else {
            strawberry.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func watermelon(_ sender: Any) {
        if (watermelon.backgroundColor == UIColor.darkGray) {
            watermelon.backgroundColor = UIColor.lightGray;
        } else {
            watermelon.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func blueberry(_ sender: Any) {
        if (blueberry.backgroundColor == UIColor.darkGray) {
            blueberry.backgroundColor = UIColor.lightGray;
        } else {
            blueberry.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func orange(_ sender: Any) {
        if (orange.backgroundColor == UIColor.darkGray) {
            orange.backgroundColor = UIColor.lightGray;
        } else {
            orange.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func raspberry(_ sender: Any) {
        if (raspberry.backgroundColor == UIColor.darkGray) {
            raspberry.backgroundColor = UIColor.lightGray;
        } else {
            raspberry.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func bananas(_ sender: Any) {
        if (bananas.backgroundColor == UIColor.darkGray) {
            bananas.backgroundColor = UIColor.lightGray;
        } else {
            bananas.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func pineapple(_ sender: Any) {
        if (pineapple.backgroundColor == UIColor.darkGray) {
            pineapple.backgroundColor = UIColor.lightGray;
        } else {
            pineapple.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func mango(_ sender: Any) {
        if (mango.backgroundColor == UIColor.darkGray) {
            mango.backgroundColor = UIColor.lightGray;
        } else {
            mango.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func blackberry(_ sender: Any) {
        if (blackberry.backgroundColor == UIColor.darkGray) {
            blackberry.backgroundColor = UIColor.lightGray;
        } else {
            blackberry.backgroundColor = UIColor.darkGray;
        }
    }
    
    @IBAction func cherry(_ sender: Any) {
        if (cherry.backgroundColor == UIColor.darkGray) {
            cherry.backgroundColor = UIColor.lightGray;
        } else {
            cherry.backgroundColor = UIColor.darkGray;
        }
    }

}
