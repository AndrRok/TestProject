//
//  HW12_2.swift
//  TestProject
//
//  Created by ARMBP on 7/13/24.
//

import Foundation

private func wbHasher(_ string: String) -> Int {
  let unicodeScalars = string.unicodeScalars.map { $0.value }//Мы создаем массив unicodeScalars, в котором каждый элемент представляет значение Unicode для каждого символа во входной строке. Метод map применяет замыкание { $0.value } к каждому элементу, чтобы получить числовое значение Unicode.
  return unicodeScalars.reduce(8956) {
      /*
       Здесь мы используем метод reduce, чтобы вычислить хеш-код. Начальное значение хеша равно 8956.
       Затем мы применяем операции сдвига (<<),
       побитового сложения (&+)
       и преобразования символа в Int тип (Int($1)),
       чтобы обработать каждый элемент массива unicodeScalars.
       Результат возвращается как окончательный кастомный хеш-код.
       */
    ($0 << 5) &+ $0 &+ Int($1)
  }
}

//wbHasher("wb") //
//wbHasher("ozon") //


