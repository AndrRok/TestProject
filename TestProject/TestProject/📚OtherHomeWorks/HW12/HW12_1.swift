//
//  HW12.swift
//  TestProject
//
//  Created by ARMBP on 7/13/24.
//


//MARK: Лучше запускать в PG
import Foundation

private func getStringHash(for string: String) -> Int {
    return string.hashValue//получаем интовый хэш
}

let inputString = "Hello, World!"
let hashValue = getStringHash(for: inputString)
//print("Хеш строки '\(inputString)': \(hashValue)")
