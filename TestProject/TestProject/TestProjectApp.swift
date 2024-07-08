//
//  TestProjectApp.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

enum HWCases {
    case mainWB, widget, infiniteScroll, none
}

@main
struct TestProjectApp: App {
    
    @State private var appMode: HWCases = .none
    
    var body: some Scene {
        WindowGroup {
            
            switch appMode {
                case .mainWB:
                    InitialScreen()
                case .widget:
                    ContentView()
                case .infiniteScroll:
                    InfiniteScrollView()
                case .none:
                    Picker("Mode", selection: $appMode) {
                        Text("MainWB").tag(HWCases.mainWB)
                        Text("Widget").tag(HWCases.widget)
                        Text("InfiniteScroll").tag(HWCases.infiniteScroll)
                        Text("Please Choose The mode, it will be permanent until app restart").tag(HWCases.none)
                    }
            }
        }
    }
}
