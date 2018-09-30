//
//  IntroViewController.swift
//  Smoothies
//
//  Created by Francis Wethington on 9/30/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit
import GoogleSignIn


class IntroViewController: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate  {
    var error : NSError?
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error != nil{
            print(error ?? "Some Error")
            return;
        }
        emaildisplay.text = user.profile.email
    }
    
    @IBOutlet weak var emaildisplay: UILabel!
    
    @IBOutlet weak var labelMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        
        //        var error : NSError?
        
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        
        let googleSignInButton = GIDSignInButton()
        googleSignInButton.center = view.center
        view.addSubview(googleSignInButton)
        
        func googleSingInButton(Sender: AnyObject){
            print("Chicken")
            self.performSegue(withIdentifier: "ToNext", sender: nil)
        }
        
        
        //        func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        //            if error != nil{
        //                print(error ?? "Some Error")
        //                return;
        //            }
        //            labelMessage.text = user.profile.email
        //        }
        
    }
    
    
    
    
}
