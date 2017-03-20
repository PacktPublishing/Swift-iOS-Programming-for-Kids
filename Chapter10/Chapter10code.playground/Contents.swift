
class Pokemon {
    let name: String
    var hp: Int
    var attack: Int
    var defense: Int
    
    init(name: String, hp: Int, attack: Int, defense: Int) {
        self.name = name
        self.hp = hp
        self.attack = attack
        self.defense = defense
    }
    
    func attack(pokemon: Pokemon) {
        if attack > pokemon.defense  {
            let damage = attack - pokemon.defense
            pokemon.hp = pokemon.hp - damage
        }
    }
    
    func hug(pokemon: Pokemon) {
        if pokemon.name == "Pikachu" {
            hp = hp - 5
            print("Ouch!")
        } else {
            print("Thanks for the hug \(pokemon.name).")
        }
    }
    
}

let pikachu = Pokemon(name: "Pikachu", hp: 35, attack: 55, defense: 40)
let charizard = Pokemon(name: "Charizard", hp: 78, attack: 84, defense: 78)
let bulbasaur = Pokemon(name: "Bulbasaur", hp: 45, attack: 49, defense: 49)

pikachu.attack(pokemon: charizard)
print("Charizard has \(charizard.hp) hit points.")
// Prints "Charizard has 78 hit points."

bulbasaur.hug(pokemon: charizard)
// Prints "Thanks for the hug Charizard."

charizard.hug(pokemon: pikachu)
// Prints "Ouch!"

print("Charizard has \(charizard.hp) hit points remaining.")
// Prints "Charizard has 73 hit points remaining.



