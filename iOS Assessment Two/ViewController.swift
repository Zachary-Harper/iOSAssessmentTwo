//
//  ViewController.swift
//  iOS Assessment Two
//
//  Created by Zachary Harper on 10/25/18.
//  Copyright © 2018 Zachary Harper. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard
        let firstName = firstNameTextField.text , !firstName.isEmpty,
        let lastName = lastNameTextField.text , !lastName.isEmpty,
        let email = emailTextField.text , !email.isEmpty
        else {
            let errorAlert = UIAlertController(title: "Error", message: "Please fill all fields or press cancel to return to login screen.", preferredStyle: UIAlertController.Style.alert)
            let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {UIAlertAction in }
            errorAlert.addAction(dismissAction)
            self.present(errorAlert, animated: true, completion: nil)
            return
            
            
            
        }
       let personAlert = UIAlertController(title: "Greetings", message: "Hello \(firstName) \(lastName). Your email is \(email)", preferredStyle: UIAlertController.Style.alert)
        
        let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {UIAlertAction in }
        
        personAlert.addAction(dismissAction)
        self.present(personAlert, animated: true, completion: nil)
        return
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    


}

