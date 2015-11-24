//
// Created by boqing fu on 15/11/24.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class WeatherReport {
    let location: String
    let weather: String
    var temperature: Int?

//    lazy var reports: () -> String = {
//        if self.temperature != nil {
//            return "\(self.location) weather report is: \(self.weather), temp is: \(self.temperature)"
//        } else {
//            return "\(self.location) weather report is: \(self.weather)"
//        }
//    }

    lazy var reports: () -> String = {
        [unowned self] in
        if self.temperature != nil {
            return "\(self.location) weather report is: \(self.weather), temp is: \(self.temperature)"
        } else {
            return "\(self.location) weather report is: \(self.weather)"
        }
    }

    init(location: String, weather: String) {
        self.location = location
        self.weather = weather
    }

    deinit {
        print("\(location) weather report is destroyed.")
    }
}