//
// Created by boqing fu on 15/11/21.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

enum LanXiangFee {
    case XiJianChui
    case WaJueJi
    //可失败构造器
    init?(money: Int) {
        if money >= 30000 && money < 50000 {
            self = .XiJianChui
        } else if money >= 50000 {
            self = .WaJueJi
        } else {
            print("No men.")
            return nil
        }
    }
}

struct Student {
    var name: String = "jia"
    var field: String = "wajueji"
    var money = 30000
}

class TechnicalSchool {
    var name: String?
    var location: String?
    var topField: String?
    var advertisement: String?

    //指定构造器
    init(name: String, location: String, topField: String, advertisement: String) {
        self.name = name
        self.location = location
        self.topField = topField
        self.advertisement = advertisement
    }

    //便捷构造器
    convenience init() {
        self.init(name: "山东蓝翔", location: "山东", topField: "挖掘机", advertisement: "挖掘机技术哪家强,山东技校找蓝翔.")
    }

    //这是可失败构造器
    init?(has3IDCard: Bool) {
        if has3IDCard {
            return nil
        }
    }

    convenience init!(isRumor: Bool) {
        self.init(name: "山东蓝翔", location: "山东", topField: "挖掘机", advertisement: "挖掘机技术哪家强,山东技校找蓝翔.")
    }

    func receive(student: Student) {
        print("\(name) 欢迎你!")
    }
}