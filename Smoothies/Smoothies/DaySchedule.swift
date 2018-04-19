//
//  DaySchedule.swift
//  Smoothies
//
//  Created by Kedar Rao on 4/19/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

class DaySchedule: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        following.backgroundColor = UIColor.white
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var following: UIButton!
    @IBOutlet weak var followingText: UIButton!
    
    @IBAction func followingText(_ sender: Any) {
        if (following.backgroundColor == UIColor.white) {
            following.backgroundColor = UIColor.gray
        } else {
            following.backgroundColor = UIColor.white
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
