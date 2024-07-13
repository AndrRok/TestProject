//
//  HW12_4.swift
//  TestProject
//
//  Created by ARMBP on 7/13/24.
//

import Foundation

private func HW12_4() {
    // Создаем пустой словарь с типом [String: Int]
    var populationByCity: [String: Int] = .init()
    
    // Добавляем пары ключ-значение в словарь
    populationByCity["Москва"] = 10001
    populationByCity["Санкт-Петербург"] = 10002
    populationByCity["Самара"] = 10003
    
    // Удаляем одну пару ключ-значение
    populationByCity["Самара"] = nil
    
    // Обновляем значение для одного из ключей
    populationByCity["Москва"] = 1
    
    // Получаем значение для одного из ключей
    if let populationOfMoscow = populationByCity["Москва"] {
        print("Население Москвы: \(populationOfMoscow)")
    } else {
        print("Информация о Москве отсутствует в словаре.")
    }
}
