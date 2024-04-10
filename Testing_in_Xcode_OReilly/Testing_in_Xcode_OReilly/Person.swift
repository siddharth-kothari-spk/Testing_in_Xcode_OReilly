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
    var spproveTerms: Bool = false
    
    func checkEmail() -> String? {
        if (!Utilities.isValidEmail(email)) {
            return "Incorrect email"
        }
        return nil
    }
    
    func checkPassword() -> String? {
        if password == "" {
            return "Missing password"
        }
        return nil
    }
    
    func checkAge() -> String? {
        let yearNow = Calendar.current.component(.year, from: Date())
        guard let bornYear = Int(bornYear) else {
            return "Enter valid birth year"
        }
        
        if yearNow - bornYear < 18 {
            return "Not eligible"
        }
        return nil
    }
}
