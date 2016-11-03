//
//  loginViewController.swift
//  sataSwift
//
//  Created by Sunny Thakkar on 31/10/16.
//  Copyright © 2016 Sunny Thakkar. All rights reserved.
//

import UIKit
import Parse
class loginViewController: UIViewController {
    @IBOutlet weak var userNameTextfield: UITextField!

    @IBOutlet weak var passwordTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func cancelButtonAction(sender: AnyObject) {
        
        print("Cancel Button Clicked")
        
        self.dismissViewControllerAnimated(false) { 
            
        }
    }
    
    
    @IBAction func loginButtonAction(sender: AnyObject) {
        
        print("Login Button Clicked")
        let userEmail = userNameTextfield.text
        let userPassword = passwordTextfield.text
        
        if !userEmail!.isEmpty && !userPassword!.isEmpty {
            PFUser.logInWithUsernameInBackground(userEmail!, password: userPassword!) { (user, error) -> Void in
                if error == nil {
                    print("succesful")
                    self.dismissViewControllerAnimated(false, completion: { 
                        
                    })
                } else {
                    print("error: \(error!.userInfo)")
                }
            }
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
