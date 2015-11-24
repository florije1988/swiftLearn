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

//蓝翔
var oldCoder = Student(name: "haha", field: "xijianchui", money: 250)
var student1 = Student()

var lanXiangTecSchool = TechnicalSchool()
var laoLuoTecSchool = TechnicalSchool(name: "北京老罗技校", location: "北京", topField: "锤子挖掘机", advertisement: "三倍情怀!")
var feeForOldCoder = LanXiangFee(money: oldCoder.money)
if feeForOldCoder == nil {
    print("you a refused by lanxiang.")
    laoLuoTecSchool.receive(oldCoder)
} else {
    lanXiangTecSchool.receive(oldCoder)
}

var lanXiangTecSchoolNew = TechnicalSchool(has3IDCard: true)
if lanXiangTecSchoolNew == nil {
    print("can not create lanXiangTecSchoolNew")
}

lanXiangTecSchoolNew = TechnicalSchool(isRumor: true)
if lanXiangTecSchoolNew != nil {
    print("create lanXiangTecSchoolNew")
}

var weatherReport: WeatherReport? = WeatherReport(location: "Beijing", weather: "duoyun")
print("\(weatherReport!.reports())")
weatherReport = nil

let john = Person()
//if let someToy = john.pet?.favoriteToy?.name {
//    print(someToy)
//} else {
//    print("no toy.")
//}

if let toysNumber = john.pet?.numberOfToys {
    print("john's pet has \(toysNumber) toys.")
} else {
    print("john has no toy.")
}