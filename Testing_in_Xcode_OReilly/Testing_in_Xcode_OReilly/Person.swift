//
//  Person.swift
//  Testing_in_Xcode_OReilly
//
//  Created by Siddharth Kothari on 10/04/24.
//

import Foundation

class Person {
    var email: String = ""
    var password: String = ""
    var bornYear: String = ""
    var approveTerms: Bool = false
    
    func checkForm() -> String? {
        if (!Utilities.isValidEmail(email)) {
            return "Incorrect email"
        }
        
        if password == "" {
            return "Missing password"
        }
        
        let yearNow = Calendar.current.component(.year, from: Date())
        guard let bornYear = Int(bornYear) else {
            return "Enter valid birth year"
        }
        
        if yearNow - bornYear < 18 {
            return "Not eligible"
        }
        
        return approveTerms ? nil : "terms not accepted"
        
    }
}

