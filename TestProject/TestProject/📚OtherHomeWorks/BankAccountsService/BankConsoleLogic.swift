//
//  BankConsoleLogic.swift
//  TestProject
//
//  Created by ARMBP on 6/20/24.
//


//MARK: - Домашнее задание #4
import Foundation

final class BankAccount {
    var balance: Double
    let accountNumber: Int

    init(accountNumber: Int, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }

    func deposit(amount: Double) {
        balance += amount
    }

    func transfer(amount: Double, to account: BankAccount) -> Bool {
        if balance < amount {
            return false
        } else {
            balance -= amount
            account.deposit(amount: amount)
            return true
        }
    }
}

final class Bank {
    var accounts: [BankAccount] = .init()

    func addAccount(account: BankAccount) {
        accounts.append(account)
    }

    func printAccounts() {
        for account in accounts {
            print("Account \(account.accountNumber): \(account.balance)")
        }
    }
}
//MARK: - Использование
// Использование классов Bank и BankAccount

///let bank = Bank()

// Добавление счетов. Команды для вызова
///bank.addAccount(account: BankAccount(accountNumber: 1, balance: 1000))
///bank.addAccount(account: BankAccount(accountNumber: 2, balance: 1500))

// Печать состояния всех счетов до операций
///print("Состояние счетов до операций:")
///bank.printAccounts()

// Выполнение операций

///if let firstAccount = bank.accounts.first {
///    firstAccount.deposit(amount: 500)
///    if let secondAccount = bank.accounts.last {
///        firstAccount.transfer(amount: 700, to: secondAccount)
///    }
///}


// Печать состояния всех счетов после операций
///print("Состояние счетов после операций:")
///bank.printAccounts()

