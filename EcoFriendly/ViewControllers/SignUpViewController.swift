//
//  SignUpViewController.swift
//  EcoFriendly
//
//  Created by Tyra Krehbiel on 11/9/19.
//  Copyright © 2019 MLSquad. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements() {
        errorLabel.alpha = 0
    }
    
    func isPasswordValid(password:String) -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@",
            "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    func validateFields() -> String? {
//        Make sure the fields are filled out with text (no blanks)
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields."
        }
        
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
//        Make sure the password follows parameters
//        Regex found
        if isPasswordValid(password: cleanedPassword) == false {
            return "Please provide valid password."
        }
        
        return nil
    }
    
    func showError(message:String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func transitionToHome() {
        let homeViewController =
            storyboard?.instantiateViewController(identifier:
            Constants.Storyboard.homeViewController) as?
            HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
//        let error = validateFields()
//
//        if error != nil {
//            showError(message:error!)
//        } else {
//            // create user and clean data
//
//            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//
//            Auth.auth().createUser(withEmail: email, password: password) {(result, err) in
//                if let err = err {
//                    self.showError(message:"Error creating user")
//                } else {
//                    let db = Firebase.firestore()
//
//                    db.collections("users").addDocument(data: ["firstname":firstName,"lastname":lastName,"uid":result!.user.uid]) {(error) in
//
//                    }
//                }
//
//            }
//        }
//
//        self.transitionToHome()
//    }
}
}
