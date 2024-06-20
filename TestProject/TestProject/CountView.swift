//
//  CountView.swift
//  TestProject
//
//  Created by ARMBP on 6/20/24.
//

import SwiftUI

struct CountView: View {
    
    @AppStorage("someValue",
                store: UserDefaults(suiteName: "group.AR.TestProject")) var someValue = 0
    var body: some View {
        Text(String(someValue))
        
        Button {
            someValue += 1
            WidgetCenter.shared.reloadTimelines(ofKind: "WBWidger")
        } label: {
            Text(String(someValue))
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .foregroundStyle(Color.blue)
                .background(
                    Rectangle()
                        .foregroundStyle(Color.purple)
                )
        }
    }
}

#Preview {
    CountView()
}
