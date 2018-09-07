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
        strawberry.backgroundColor = UIColor.white
        watermelon.backgroundColor = UIColor.white
        blueberry.backgroundColor = UIColor.white
        orange.backgroundColor = UIColor.white
        raspberry.backgroundColor = UIColor.white
        bananas.backgroundColor = UIColor.white
        pineapple.backgroundColor = UIColor.white
        mango.backgroundColor = UIColor.white
        blackberry.backgroundColor = UIColor.white
        cherry.backgroundColor = UIColor.white

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
        if (strawberry.backgroundColor == UIColor.white) {
            strawberry.backgroundColor = UIColor.lightGray;
        } else {
            strawberry.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func watermelon(_ sender: Any) {
        if (watermelon.backgroundColor == UIColor.white) {
            watermelon.backgroundColor = UIColor.lightGray;
        } else {
            watermelon.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func blueberry(_ sender: Any) {
        if (blueberry.backgroundColor == UIColor.white) {
            blueberry.backgroundColor = UIColor.lightGray;
        } else {
            blueberry.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func orange(_ sender: Any) {
        if (orange.backgroundColor == UIColor.white) {
            orange.backgroundColor = UIColor.lightGray;
        } else {
            orange.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func raspberry(_ sender: Any) {
        if (raspberry.backgroundColor == UIColor.white) {
            raspberry.backgroundColor = UIColor.lightGray;
        } else {
            raspberry.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func bananas(_ sender: Any) {
        if (bananas.backgroundColor == UIColor.white) {
            bananas.backgroundColor = UIColor.lightGray;
        } else {
            bananas.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func pineapple(_ sender: Any) {
        if (pineapple.backgroundColor == UIColor.white) {
            pineapple.backgroundColor = UIColor.lightGray;
        } else {
            pineapple.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func mango(_ sender: Any) {
        if (mango.backgroundColor == UIColor.white) {
            mango.backgroundColor = UIColor.lightGray;
        } else {
            mango.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func blackberry(_ sender: Any) {
        if (blackberry.backgroundColor == UIColor.white) {
            blackberry.backgroundColor = UIColor.lightGray;
        } else {
            blackberry.backgroundColor = UIColor.white;
        }
    }
    
    @IBAction func cherry(_ sender: Any) {
        if (cherry.backgroundColor == UIColor.white) {
            cherry.backgroundColor = UIColor.lightGray;
        } else {
            cherry.backgroundColor = UIColor.white;
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
