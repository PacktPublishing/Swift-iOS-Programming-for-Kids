//
//  Planet .swift
//  SpacePizza
//
//  Created by Jim Campagno on 1/8/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation


enum Planet: String {
    
    static let all: [Planet] = [.mercury, .venus, .earth, .mars, .jupiter, .saturn, .uranus, .neptune]
    
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    
    var lightMinutesFromEarth: Double {
        switch self {
        case .mercury: return 5
        case .venus: return 2
        case .earth: return 0
        case .mars: return 4.5
        case .jupiter: return 35
        case .saturn: return 71
        case .uranus: return 152
        case .neptune: return 242
        }
    }
    
    var displayName: String {
        return rawValue.capitalized
    }
    
}
