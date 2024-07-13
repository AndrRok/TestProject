//
//  SequenceHW11.swift
//  TestProject
//
//  Created by ARMBP on 7/13/24.
//


//MARK: Не очень понял как применить на этом проекте

import Foundation

fileprivate struct PhoneNumber {
    let number: String
    let pinCode: String
}

fileprivate struct PhoneNumberSequence: Sequence {
    let phoneNumbers: [PhoneNumber]
    
    func makeIterator() -> IndexingIterator<[PhoneNumber]> {
        return phoneNumbers.makeIterator()
    }
}

final private class HW11Class {
    
    private func HW11Func() {
        let phoneNumber1 = PhoneNumber(number: "+123456789", pinCode: "1234")
        let phoneNumber2 = PhoneNumber(number: "+987654321", pinCode: "5678")
        
        let phoneNumbers: [PhoneNumber] = [phoneNumber1, phoneNumber2]
        let phoneNumberSequence = PhoneNumberSequence(phoneNumbers: phoneNumbers)
        
        for phoneNumber in phoneNumberSequence {
            print("Number: \(phoneNumber.number), Pin: \(phoneNumber.pinCode)")
        }
    }
}
