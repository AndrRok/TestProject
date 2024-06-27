//
//  Fonts.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

extension Font {
    //400 – Normal(Regular). 500 – Medium. 600 – Semi Bold (Demi Bold) 700 – Bold
    
    static let head2: Font = .system(size: 24, weight: .bold)
    static let head3: Font = .system(size: 24, weight: .semibold)
    
    static let subHead1: Font = .system(size: 18, weight: .semibold)
    static let subHead2: Font = .system(size: 16, weight: .semibold)
    static let subHead3: Font = .system(size: 16, weight: .regular)
    
    static let body1: Font = .system(size: 14, weight: .semibold)
    static let body2: Font = .system(size: 14, weight: .regular)
    
    static let metaData1: Font = .system(size: 12, weight: .regular)
    
    static let agreementFont: Font = .system(size: 12, weight: .regular)
}
