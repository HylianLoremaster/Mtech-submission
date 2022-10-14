//
//  ViewController.swift
//  Text validation
//
//  Created by Jordan Hansen on 10/14/22.
//

import UIKit

class ViewController: UIViewController {
    var hasCapital = false
    var hasLowercase = false
    var hasCharacter = false
    var isLong = false
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        isValidPassword(password: passwordTextField.text)
        
        if !hasCapital || !hasLowercase {
            errorLabel.text = "Password must have at least one capital and one lowercase letter."
        } else if !hasCharacter {
            errorLabel.text = "Password must contain at least one special character."
        } else if !isLong {
            errorLabel.text = "Password must be at least 8 characters long."
        } else {
            errorLabel.text = "Logged in successfully."
        }
        
        errorLabel.isHidden = false
    }
    
    
    func isValidPassword(password: String?) {
        guard let password = password else {return}
        if password.count >= 8 {
            isLong = true
        }
        for character in password {
            if character.isUppercase {
                hasCapital = true
            }
            if character.isLowercase {
                hasLowercase = true
            }
            if character == "@" || character == "," || character == "." || character == "!" || character == "," || character == "#" || character == "$" || character == "%" || character == "^" || character == "&" || character == "*" || character == "<" || character == ">" || character == "?" || character == "+" || character == "=" || character == "-" {
                hasCharacter = true
            }
        }
    }
    
    


}

