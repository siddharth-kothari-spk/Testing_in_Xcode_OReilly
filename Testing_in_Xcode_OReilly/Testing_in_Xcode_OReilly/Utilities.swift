//
//  Utilities.swift
//  Testing_in_Xcode_OReilly
//
//  Created by Siddharth Kothari on 09/04/24.
//

import Foundation

class Utilities {
    public static func isValidEmail(_ email: String) -> Bool {
        let emailPattern = #"^\S+@\S+\.\S+$"#
        let result = email.range(
            of: emailPattern,
            options: .regularExpression
        )
        
        return (result != nil)
    }
}

