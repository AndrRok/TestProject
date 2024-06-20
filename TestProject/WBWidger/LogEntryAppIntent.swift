//
//  LogEntryAppIntent.swift
//  TestProject
//
//  Created by ARMBP on 6/20/24.
//

import Foundation
import AppIntents
import WidgetKit


struct LogEntryAppIntent: AppIntent {
    static var title: LocalizedStringResource = "Log an entry to your someValue"
    
    static var description: IntentDescription? = IntentDescription("Adds 1 to your some value")
    
    func perform() async throws -> some IntentResult {
        let data: DataService = .init()
        data.log()
        
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}
