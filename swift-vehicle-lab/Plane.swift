//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Henry Chan on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Plane:Vehicle {
    
    let maxAltitude:Double
    var altitude:Double = 0.0
    var inFlight:Bool {
        
        if speed > 0 && altitude > 0 {
            
            return true
        }
            return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
        
    }
    
    
    
    func takeoff() {
        
        if !inFlight {
        speed = maxSpeed * 0.10
        altitude = maxAltitude * 0.10
    }
    
    }
    
    
    func land() {
        
        speed = 0
        altitude = 0
    }
    
    
    func climb() {
       
        if inFlight {
        
            altitude += maxAltitude * 0.10
        
            decelerate()
            
            if altitude > maxAltitude {
            
            altitude = maxAltitude
            }
        
        }
    }
    
    
    func dive() {
        
        if altitude > 0 {
        
            altitude -= maxAltitude * 0.10
        
            accelerate()
            
            if altitude < 0  {
            
            altitude = 0
            }
        }
    }
    
    
    func bankRight() {
        
        heading += 45
        
        speed = speed * 0.90
        
        if speed == 0 {
            
            heading = 0
        }
        
        if heading > 360 {
            
            heading = heading - 360
        }
        
    }
    
    
    
    func bankLeft() {
        
        heading += 315
        
        speed = speed * 0.90
        
        if speed == 0 {
            
            heading = 0
        }
        
        if heading > 360 {
            
            heading = heading - 360
        }
    }
}















