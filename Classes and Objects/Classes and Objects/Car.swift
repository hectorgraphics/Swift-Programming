//
//  Car.swift
//  Classes and Objects
//
//  Created by Jonathan Hector on 12.02.19.
//  Copyright © 2019 Jonathan Hector. All rights reserved.
//

import Foundation


enum CarType {
    case Sudan
    case Coupe
    case HatchBack
}

class Car {

    var colour = "Black"
    var numberOfSeats = 5
    var typeOfCar: CarType = .HatchBack
    
    init() {}
    
    convenience init(colour: String, numberOfSeats: Int) {
        self.init()
        self.colour = colour
        self.numberOfSeats = numberOfSeats
    }
    
    func drive(moveForward: Int) {
        print("Car moved \(moveForward)km")
    }
}
