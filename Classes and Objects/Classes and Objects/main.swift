//
//  main.swift
//  Classes and Objects
//
//  Created by Jonathan Hector on 12.02.19.
//  Copyright © 2019 Jonathan Hector. All rights reserved.
//

import Foundation

let myCar = Car()

let selfDrivingCar = SelfDrivingCar(colour: "Blue", numberOfSeats: 2);
selfDrivingCar.drive(moveForward: 8)
selfDrivingCar.typeOfCar = .Sudan

print(selfDrivingCar.colour)
print(selfDrivingCar.numberOfSeats)
print(selfDrivingCar.typeOfCar)

selfDrivingCar.destination = "1 Hacker Way"
selfDrivingCar.drive(moveForward: 5)
