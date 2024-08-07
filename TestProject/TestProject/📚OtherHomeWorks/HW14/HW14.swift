//
//  HW14.swift
//  TestProject
//
//  Created by ARMBP on 8/7/24.
//

import Foundation

//MARK: Singletione

class Singleton {
    static let shared = Singleton()
    
    private init() {}
    
    func doSomething() {
        print("Тут можно отправлять запросы в сеть")
    }
}

func test1() {
    Singleton.shared.doSomething()
}


//MARK: Observer
class Observable {
    private var observers: [MyObserver] = []
    
    func addObserver(_ observer: MyObserver) {
        observers.append(observer)
    }
    
    func removeObserver(_ observer: MyObserver) {
        observers = observers.filter { $0 !== observer }
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update()
        }
    }
}

protocol MyObserver: AnyObject {
    func update()
}

class ConcreteObserver: MyObserver {
    func update() {
        print("Нотификация")
    }
}

func tes2() {
    let observable = Observable()
    let observer = ConcreteObserver()
    observable.addObserver(observer)
    observable.notifyObservers()
}

//MARK: DI

protocol Service {
    func performAction()
}

class ConcreteService: Service {
    func performAction() {
        print("do action")
    }
}

class Client {
    private let service: Service
    
    init(service: Service) {
        self.service = service
    }
    
    func doWork() {
        service.performAction()
    }
}

func test3() {
    let service = ConcreteService()
    let client = Client(service: service)
    client.doWork()
}

