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
        
        var person = Person()
        person.email = emailTextField.text!
        person.password = passwordTextField.text!
        person.bornYear = bornYearTextField.text!
        person.approveTerms = approveTermsSwitch.isOn
        
        let errorMessage = person.checkForm()
        
        guard (errorMessage != nil) else {
            return
        }
        errorLabel.text = errorMessage
    }
    
    
}

