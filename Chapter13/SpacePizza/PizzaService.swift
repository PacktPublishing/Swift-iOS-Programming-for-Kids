//
//  PizzaService.swift
//  SpacePizza
//
//  Created by Jim Campagno on 1/9/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation


class PizzaService {
    
    let name: String
    private var pricePerLightMinute = 20.0

    var spaceJunk: SpaceJunk = .low {
        didSet {
            switch spaceJunk {
            case .low: pricePerLightMinute = 10.0
            case .medium: pricePerLightMinute = 20.0
            case .high: pricePerLightMinute = 50.0
            }
        }
    }
    
    
    init(name: String) {
        self.name = name
    }
    
    func deliveryCharge(for destination: Planet) -> Double {
        return pricePerLightMinute * destination.lightMinutesFromEarth
    }
    
}
