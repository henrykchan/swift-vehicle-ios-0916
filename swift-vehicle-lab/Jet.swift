//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Henry Chan on 10/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Jet:Plane {
    
    override func climb() {
        
        if inFlight {
            
            altitude += maxAltitude * 0.20
            
            decelerate()
            
            if altitude > maxAltitude {
                
                altitude = maxAltitude
            }
            
        }
    }
    
    
    override func dive() {
        
        if altitude > 0 {
            
            altitude -= maxAltitude * 0.20
            
            accelerate()
            
            if altitude < 0  {
                
                altitude = 0
            }
        }
    }
    
    
    func afterburner() {
        
        if inFlight && speed == maxSpeed {
            
            speed = maxSpeed * 2
        }
    }
    
}
