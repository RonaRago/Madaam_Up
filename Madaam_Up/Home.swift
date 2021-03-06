//
//  Home.swift
//  Madaam_Up
//
//  Created by Rona Rago on 10/08/2018.
//  Copyright © 2018 Rona Rago. All rights reserved.
//

import UIKit
import FirebaseAuth

class Home: UIViewController {

    @IBAction func btnLogout(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            
            dismiss(animated: true, completion: nil)
        }
            
        catch {
            print("There was a problem logging out")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
