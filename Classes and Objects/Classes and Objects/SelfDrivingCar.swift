//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Jonathan Hector on 12.02.19.
//  Copyright © 2019 Jonathan Hector. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    var destination: String?
    
    override func drive(moveForward: Int) {
        super.drive(moveForward: moveForward)
        if let currDestination = destination {
            print("Now moving towards \(currDestination)")
        }
    }
}
