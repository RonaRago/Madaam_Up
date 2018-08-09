//
//  VCLogin.swift
//  Madaam_Up
//
//  Created by Rona Rago on 10/08/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit
import Firebase

class VCLogin: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        if let email = txtEmail.text, let password = txtPassword.text {
            Auth.auth().signIn(withEmail: email, password: password, completion:
                { (user ,error) in
                    if let firebaseError = error
                    {print(firebaseError.localizedDescription)
                        return
                    }
                    //self.presentLoggedInScreen()
                    print("Success!")
            })
        }
    }
    

}
