//
// Created by boqing fu on 15/11/24.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class Person {
    var pet: Pet?
}

class Pet {
    var name: String

    var toys: [Toy] = [Toy]()

    var numberOfToys: Int {
        return toys.count
    }

    var favoriteToy: Toy? {
        if numberOfToys != 0 {
            return toys[0]
        } else {
            return nil
        }
    }

    subscript(i: Int) -> Toy {
        get {
            return toys[i]
        }
        set {
            toys[i] = newValue
        }
    }

    init(name: String) {
        self.name = name
    }

    func printNumberOfToys() {
        print("Toy number is \(numberOfToys).")
    }
}

class Toy {
    var name: String
    var placeOfOriginal: String?

    init(name: String) {
        self.name = name
    }

    func getPlaceOfOriginal() -> String? {
        if placeOfOriginal != nil {
            return placeOfOriginal
        } else {
            return nil
        }
    }
}
