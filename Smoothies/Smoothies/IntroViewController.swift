//
//  IntroViewController.swift
//  Smoothies
//
//  Created by Kedar Rao on 10/17/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit
import GoogleSignIn

class IntroViewController: UIViewController, UITextFieldDelegate, GIDSignInUIDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        self.emailTextField.delegate = self
        self.emailTextField.returnKeyType = .done
        
        self.passwordTextField.delegate = self
        self.passwordTextField.returnKeyType = .done
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
