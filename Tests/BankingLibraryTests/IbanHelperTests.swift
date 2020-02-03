//
//  IbanHelperTests.swift
//  
//
//  Created by Halit ŞENARSLAN on 3.02.2020.
//

import XCTest
import BankingLibrary

@testable import BankingLibrary

final class IbanHelperTests: XCTestCase {
    static var allTests = [
        ("IbanHelperTests", testValidIban),
        ("testNotValidIban", testNotValidIban),
    ]
    
    func testValidIban() {
        let iban = "TR10 0020 5000 0083 8472 8000 02"
        let result = IbanValidator().validateIban(iban: iban)
        XCTAssertTrue(result)
    }

    func testNotValidIban() {
        let iban1 = "TR10 0020 5000 "
        let iban2 = "TRASDFASDFASDF ASDFA"
        
        let result1 = IbanValidator().validateIban(iban: iban1)
        let result2 = IbanValidator().validateIban(iban: iban2)
        XCTAssertFalse(result1)
        XCTAssertFalse(result2)
        
    }
}
