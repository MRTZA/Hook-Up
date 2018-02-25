//
//  LoginSignup.swift
//  Hook-Up
//
//  Created by Murtaza Hakimi on 2/24/18.
//  Copyright © 2018 Murtaza Hakimi. All rights reserved.
//

import UIKit

//importing firebase
import Firebase

class LoginSignup: UIViewController {
    
    //Textfields for email and password
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    //label for displaying message
    @IBOutlet weak var labelMessage: UILabel!
    
    
    @IBAction func signUpPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "gotosignup", sender: self)
    }
    
    //button for registration
    @IBAction func buttonRegister(sender: UIButton) {
        //do the registration operation here
        
        //first take the email and password from the views
        let email = textFieldEmail.text
        let password = textFieldPassword.text
        
        Auth.auth().createUser(withEmail: email!, password: password!, completion: { (user: User?, error) in
            if error == nil {
                self.labelMessage.text = "You are successfully registered"
            }else{
                self.labelMessage.text = "Registration Failed.. Please Try Again"
            }
            
        })
    }
    @IBAction func buttonRegister(_ sender: Any) {
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

