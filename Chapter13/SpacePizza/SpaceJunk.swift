//
//  SpaceJunk.swift
//  SpacePizza
//
//  Created by Jim Campagno on 1/9/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation


enum SpaceJunk: String {
    
    case low, medium, high
    
    var displayName: String {
        return rawValue.capitalized
    }
    
}
