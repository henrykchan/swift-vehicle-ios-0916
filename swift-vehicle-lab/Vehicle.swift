//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Henry Chan on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Vehicle {
    
    let name:String
    let weight:Double
    let maxSpeed:Double
    var speed:Double = 0
    var heading:Double = 0
    
    
    
    init (name:String, weight:Double, maxSpeed:Double) {
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    
    
    func goFast() {
        
        speed = maxSpeed
    }
    
    
    func halt() {
        
        speed = 0
    }
    
    
    func accelerate() {
        
        speed += maxSpeed * (1/10)
        
        if speed > maxSpeed {
            
            speed = maxSpeed
        }
    }
    
    
    func decelerate() {
        
        speed -= maxSpeed * (1/10)
        
        if speed < 0 {
            
            speed = 0
        }
    }
    
    
    func turnRight() {
        
        heading += 90
        
        speed = speed / 2
        
        if speed == 0 {
            
            heading = 0
        }
        
        if heading > 360 {
            
            heading = heading - 360
        }
    }
    
    
    func turnLeft() {
        
        heading += 270
        
        speed = speed / 2
        
        if speed == 0 {
            
            heading = 0
        }
        
        if heading > 360 {
            
            heading = heading - 360
            
        }
    }
}
