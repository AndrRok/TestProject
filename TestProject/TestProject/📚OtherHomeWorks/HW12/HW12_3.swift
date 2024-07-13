//
//  HW12_3.swift
//  TestProject
//
//  Created by ARMBP on 7/13/24.
//

import Foundation

private func HW12_3() {
    // Создаем пустое множество целых чисел
    var mySet = Set<Int>()
    
    // Добавляем элементы в множество
    mySet.insert(5)
    mySet.insert(10)
    mySet.insert(15)
    
    // Удаляем один элемент
    mySet.remove(10)
    
    // Проверяем, существует ли определенный элемент в множестве
    let elementToCheck = 15
    if mySet.contains(elementToCheck) {
        print("\(elementToCheck) существует в множестве.")
    } else {
        print("\(elementToCheck) не существует в множестве.")
    }
    
    // Создаем еще одно множество
    let otherSet: Set<Int> = [10, 20, 30]
    
    // Операция объединения множеств
    let unionSet = mySet.union(otherSet)
    print("Объединение множеств: \(unionSet)")
    
    // Операция пересечения множеств
    let intersectionSet = mySet.intersection(otherSet)
    print("Пересечение множеств: \(intersectionSet)")
    
    // Операция разности множеств
    let differenceSet = mySet.subtracting(otherSet)
    print("Разность множеств: \(differenceSet)")
}
