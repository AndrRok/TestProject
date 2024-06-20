//
//  InterpolationAndOthers.swift
//  TestProject
//
//  Created by ARMBP on 6/20/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            DatePicker("Выберите дату", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
            
            Picker("Выберите язык", selection: $selectedLanguage) {
                ForEach(languages.indices, id: \.self) { index in
                    Text(self.languages[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            ForEach(0..<5) { index in
                Text("\(localizedDate: selectedDate, using: Locale(identifier: languages[selectedLanguage]))")
            }
        }
    }
    
    @State private var selectedDate: Date = .init()
    @State private var selectedLanguage: Int = 0
    private let languages = ["🇺🇸", "🇫🇷", "🇩🇪", "🇪🇸", "🇷🇺"]
}

struct DateModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                self.setLocale()
            }
    }
    
    private func setLocale() {
        switch language {
            case "🇺🇸":
                dateFormatter.locale = Locale(identifier: "en_US")
            case "🇫🇷":
                dateFormatter.locale = Locale(identifier: "fr_FR")
            case "🇩🇪":
                dateFormatter.locale = Locale(identifier: "de_DE")
            case "🇪🇸":
                dateFormatter.locale = Locale(identifier: "es_ES")
            case "🇷🇺":
                dateFormatter.locale = Locale(identifier: "ru_RU")
            default:
                break
        }
    }
    
    private var language: String
    private var date: Date
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        return formatter
    }()
}

extension String.StringInterpolation {
    mutating func appendInterpolation(localizedDate date: Date, using locale: Locale) {
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        formatter.doesRelativeDateFormatting = true
        appendLiteral(formatter.string(from: date))
    }
}

