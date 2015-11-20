//
// Created by boqing fu on 11/20/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class Assistant {
    var interviewees: [Int:String] = [:]
    var name: String = ""
    subscript(number: Int) -> String? {
        get {
            return interviewees[number]
        }
        set(value) {
            interviewees[number] = value
        }
    }
}
