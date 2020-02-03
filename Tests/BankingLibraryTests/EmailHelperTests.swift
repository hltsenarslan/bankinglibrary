//
//  File.swift
//  
//
//  Created by Halit ŞENARSLAN on 3.02.2020.
//

import XCTest
import BankingLibrary

@testable import BankingLibrary

final class EmailHelperTests: XCTestCase {
    static var allTests = [
        ("testValidEmail", testValidEmail),
        ("testInvalidEmail", testInvalidEmail),
    ]
    
    func testValidEmail() {
        let email = "halit.senarslan@aktifbank.com.tr"
        
        let result = EmailValidator().isValidEmail(email: email)
        XCTAssertTrue(result)
    }
    
    func testInvalidEmail() {
        let email = "halit.senarslan.aktifbank.com.tr"
        let result = EmailValidator().isValidEmail(email: email)
        XCTAssertFalse(result)
    }
}
