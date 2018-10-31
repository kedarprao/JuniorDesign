//
//  IntroViewController.swift
//  Smoothies
//
//  Created by Kedar Rao on 10/17/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit
import GoogleSignIn

class IntroViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        GIDSignIn.sharedInstance().uiDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
