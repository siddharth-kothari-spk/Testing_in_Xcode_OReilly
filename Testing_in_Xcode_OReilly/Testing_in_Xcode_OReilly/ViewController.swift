//
//  ViewController.swift
//  Testing_in_Xcode_OReilly
//
//  Created by Siddharth Kothari on 08/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var bornYearTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var approveTermsSwitch: UISwitch!
    @IBOutlet weak var registerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func approveTerms(_ sender: Any) {
        
    }

    @IBAction func registerUser(_ sender: Any) {
        
        errorLabel.text = ""
                
        if !Utilities.isValidEmail(emailTextField.text ?? "") {
            errorLabel.text = "Incorrect email"
            return
        }
        
        if (passwordTextField.text == "") {
            errorLabel.text = "Missing password"
            return
        }
        
        let yearNow = Calendar.current.component(.year, from: Date())
        guard let bornYear = Int(bornYearTextField.text!) else {
            errorLabel.text = "Enter birth year"
            return
        }
        
        if yearNow - bornYear < 18 {
            errorLabel.text = "Not eligible"
        }
        
        if approveTermsSwitch.isOn == false {
            errorLabel.text = "terms not accepted"
            return
        }
    }
    
    
}

