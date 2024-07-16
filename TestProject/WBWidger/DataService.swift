//
//  DataService.swift
//  WBWidgerExtension
//
//  Created by ARMBP on 6/20/24.
//

import Foundation
import SwiftUI

struct DataService {
    @AppStorage("someValue",
                store: UserDefaults(suiteName: "group.AR.TestProject")) 
    private var someValue = 0
    
    func log() {
        someValue += 1
    }
    
    func progress() -> Int {
        return someValue
    }
}
