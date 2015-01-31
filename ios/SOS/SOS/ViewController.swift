//
//  ViewController.swift
//  SOS
//
//  Created by MWM-15R on 31/01/2015.
//  Copyright (c) 2015 bluecorntacos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // USER MODEL
    struct User {
        var email: String
        var password: String
        
        init() {
            email = "bluecorntacos@me.com"
            password = "secret"
        }
        
        init(email: String, password: String) {
            self.email = email
            self.password = password
        }
    }


    // LOG IN A USER
    @IBOutlet weak var login_email: UITextField!
    @IBOutlet weak var login_password: UITextField!
    
    @IBOutlet weak var login_errorMessage: UILabel!
    
    @IBAction func login(sender: UIButton) {
        if(login_email.text.isEmpty) {
            login_errorMessage.text = "Please enter your email address"
        }
        else if(login_password.text.isEmpty) {
            login_errorMessage.text = "Please enter your password"
        }
        else {
            let defaultUser = User()
            
            
            if(login_email.text != defaultUser.email) {
                login_errorMessage.text = "Email not registered"
            }
            else if(login_password.text != defaultUser.password) {
                login_errorMessage.text = "Incorrect password"
            }
            else {
                let view_main = self.storyboard?.instantiateViewControllerWithIdentifier("main") as ViewController
            
                self.presentViewController(view_main, animated: true, completion: nil)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

