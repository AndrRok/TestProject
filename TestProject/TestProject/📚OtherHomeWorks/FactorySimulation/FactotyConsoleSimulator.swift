//
//  FactotyConsoleSimulator.swift
//  TestProject
//
//  Created by ARMBP on 6/20/24.
//

//MARK: - Домашнее задание #5
import Foundation

// Класс, представляющий паспорт
final class Passport {
    private let series: String?
    private let number: String?
    private let issueDate: Date?
    private let owner: Person?
    
    init(series: String, number: String, issueDate: Date, owner: Person?) {
        self.series = series
        self.number = number
        self.issueDate = issueDate
        self.owner = owner
        print("Паспорт \(series) \(number) был инициализирован")
    }
    
    deinit {
        print("Паспорт \(String(describing: series)) \(String(describing: number)) был деинициализирован")
    }
}

// Класс, представляющий человека
final class Person {
    private let fullName: String?
    private let age: Int?
    var passport: Passport?
    
    init(fullName: String, age: Int) {
        self.fullName = fullName
        self.age = age
        print("Человек \(fullName) был инициализирован")
    }
    
    deinit {
        print("Человек \(String(describing: fullName)) был деинициализирован")
    }
}

// Функция для форматирования даты
private func formatDate(_ dateString: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yyyy"
    return dateFormatter.date(from: dateString)
}

// Создание экземпляров классов
private func createAndDeinitialize() {
    if let issueDate = formatDate("01.01.2015") {
        var person: Person? = Person(fullName: "Иван Иванович Иванов", age: 32)
        var passport: Passport? = Passport(series: "600-829", number: "8888 001100", issueDate: issueDate, owner: person)
        person?.passport = passport
        
        // Проверка деинициализации
        person = nil
        passport = nil
    }
}

// Запуск функции

///createAndDeinitialize()

