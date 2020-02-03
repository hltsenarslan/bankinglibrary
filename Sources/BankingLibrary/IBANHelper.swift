//
//  File.swift
//  
//
//  Created by Halit ŞENARSLAN on 3.02.2020.
//

import Foundation

public class IbanValidator {
    public init() {}
    
    public func validateIban(iban: String) -> Bool {
        let iban = iban.replacingOccurrences(of: " ", with: "")
        guard iban.count >= 4 else {
            return false
        }

        let uppercase = iban.uppercased()

        guard uppercase.range(of: "^[0-9A-Z]*$", options: .regularExpression) != nil else {
            return false
        }

        return (mod97(controlString: uppercase) == 1)
    }
    
    private func mod97(controlString: String) -> Int {
        let symbols: [Character] = Array(controlString)
        let swapped = symbols.dropFirst(4) + symbols.prefix(4)

        let mod: Int = swapped.reduce(0) { (previousMod, char) in
            let value = Int(String(char), radix: 36)! // "0" => 0, "A" => 10, "Z" => 35
            let factor = value < 10 ? 10 : 100
            return (factor * previousMod + value) % 97
        }

        return mod
    }
}
