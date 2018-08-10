//
//  VCSignUp.swift
//  Madaam_Up
//
//  Created by Rona Rago on 10/08/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit
import FirebaseAuth

class VCSignUp: UIViewController {

    //connection of Signup textfields
    @IBOutlet weak var txtFname: UITextField!
    @IBOutlet weak var txtLname: UITextField!
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
    
    @IBAction func btnSignup(_ sender: Any) {
        if let fname = txtFname.text, let lname = txtLname.text, let email = txtEmail.text, let password = txtPassword.text
        {
            Auth.auth().createUser(withEmail: email, password: password, completion:
            { user ,error in
                    if let firebaseError = error
                    {print(firebaseError.localizedDescription)
                        return
                    }
                    self.presentFeedScreen()
                    //print("Success!")
            })
        }
    }
    
    func presentFeedScreen(){
        print("present logged in Screen")
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let welcome :Home = storyboard.instantiateViewController(withIdentifier:
            "Home") as! Home
        self.present(welcome, animated: true, completion: nil)
    }
}

    
    


