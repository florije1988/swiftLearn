//
// Created by boqing fu on 15/11/20.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class Founder {
    var name = ""
    var money: Int?
    var company: String = ""
    var title: String {
        get {
            return "\(company) CEO"
        }
    }

    func say() {
        print("I'm \(name), I'm \(company) CEO, I have \(money) money")
    }
}

class Heir: Founder {
    override var title: String {
        get {
            return "Second \(company) CEO"
        }
    }
    override func say() {
        print("I'm \(name), I'm \(company) Next CEO, I have \(money) money")
    }
}