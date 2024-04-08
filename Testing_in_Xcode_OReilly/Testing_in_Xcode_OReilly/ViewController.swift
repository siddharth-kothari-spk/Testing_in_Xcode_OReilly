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
        
    }
}

