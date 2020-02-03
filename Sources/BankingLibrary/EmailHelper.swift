//
//  File.swift
//  
//
//  Created by Halit ŞENARSLAN on 3.02.2020.
//

import Foundation

public class EmailValidator  {
    public init() { }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
