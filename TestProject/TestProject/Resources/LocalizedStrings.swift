//
//  LocalizedStrings.swift
//  TestProject
//
//  Created by ARMBP on 6/5/24.
//

import SwiftUI

enum Strings {
    public static let initialLogo = "Общайтесь с друзьями\nи близкими легко"
    public static let userAgreement = "Пользовательское соглашение"
    public static let startToHang = "Начать общаться"
    public static let enterPhoneNumber = "Введите номер телефона"
    public static let wellSendPinToYourNumber = "Мы вышлем код подтверждения на указаный номер"
    public static let nextStep = "Продолжить"
    public static let plusSevenNumber = "+7"
    public static let phoneNumberPlaceHolder = "000 000-00-00"
    
    static func initialAcception() -> String {
        "Нажимая кнопку продолжить я соглашаюсь с [Политикой Конфиденциальности](ссылка) и [Условиями Использования](ссылка)"
    }
}
