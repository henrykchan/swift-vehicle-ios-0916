//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Henry Chan on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class RaceCar:Car {
    
    let driver : String
    var sponsors : [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver :String, sponsors: [String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    
    override func accelerate() {
        
        speed += maxSpeed * (1/5)
        
        if speed > maxSpeed {
            
            speed = maxSpeed
        }
    
    }
    
    override func decelerate() {
        
        speed -= maxSpeed * (1/5)
        
        if speed < 0 {
            
            speed = 0
        }
    
    }
    
    
    func driftRight() {
        
        heading += 90
        
        speed = speed * 0.75
        
        if speed == 0 {
            
            heading = 0
        }
        
        if heading > 360 {
            
            heading = heading - 360
        }
    
    }
    
    


    func driftLeft() {
        
        heading += 270
        
        speed = speed * 0.75
        
        if speed == 0 {
            
            heading = 0
        }
        
        if heading > 360 {
            
            heading = heading - 360
            
        }
    }
}
