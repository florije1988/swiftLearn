//
//  main.swift
//  swiftLearn
//
//  Created by boqing fu on 11/20/15.
//  Copyright (c) 2015 boqing fu. All rights reserved.
//

import Foundation


print("Hello, World!")

var oldCoderAssistant = Assistant()
oldCoderAssistant.name = "xiaoqigui"
oldCoderAssistant[007] = "mamami"
print(oldCoderAssistant[007]!)

var salary: Int = 200 {
    willSet {
        print("you, you, check now.")
    }
    didSet {
        if salary >= (oldValue + 50) {
            print("more than 50.")
        }
    }
}

func showResult() {
    salary = 250
}

showResult()

var kingFather = Founder()
kingFather.name = "001"
kingFather.company = "0010"
kingFather.money = 1000
kingFather.say()

var kingSon = Heir()
kingSon.name = "002"
kingSon.company = "0020"
kingSon.money = 2000
kingSon.say()