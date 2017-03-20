import Foundation

enum Planet: String {
    
        static let all: [Planet] = [.mercury, .venus, .earth, .mars, .jupiter, .saturn, .uranus, .neptune]
    
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    var displayName: String {
        return rawValue.capitalized
    }
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
    
}


let myFavPlanet = Planet.earth

print("I love \(myFavPlanet.rawValue.uppercased()) and I want to tell the world!")

let bigPlanet = Planet.jupiter
print("\(bigPlanet.displayName) is a large planet.")
// Prints "Jupiter is a large planet.

let thirdRockFromTheSun = Planet.earth

let minutes = thirdRockFromTheSun.lightMinutesFromEarth

print("We are \(minutes) light minutes away.")
// Prints "We are 0.0 light minutes away."

// Prints "I love EARTH and I want to tell the world!"


Planet.all



let allThePlanets = Planet.all

for planet in allThePlanets {
    
    print(planet.displayName)
    
}

/* Prints
 Mercury
 Venus
 Earth
 Mars
 Jupiter
 Saturn
 Uranus
 Neptune
*/
enum SpaceJunk: String {
    
    case low, medium, high
    
    var displayName: String {
        return rawValue.capitalized
    }
    
}


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

let mikesPizza = PizzaService(name: "Mike's Pizza")

mikesPizza.spaceJunk = .medium

mikesPizza.spaceJunk = .high
