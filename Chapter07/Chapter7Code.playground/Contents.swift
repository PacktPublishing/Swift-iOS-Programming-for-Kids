


var list = ["Legos", "Dungeons and Dragons", "Gameboy", "Monopoly", "Rubix Cube"]


let firstItem = list[0]

let lastItem = list[4]

list[4] = "Crayons"

list.append("Play-Doh")




print(list)

print("I'm not as good as my sister, but I love solving the \(lastItem)")






print(firstItem)
// Prints "Legos"


let numbers = [5, 2, 9, 22]


let colors: [String] = ["Red", "Orange", "Yellow"]



let words = ["Coffee" : "A drink made from the roasted and ground beanlike seeds of a tropical shrub, served hot or iced."]

let planets = ["Earth" : 1, "Mars" : 2, "Jupiter" : 53]

let earthMoons = planets["Earth"]

print(earthMoons)

var favoriteColors = ["Neil" : "red", "Carl" : "blue"]

favoriteColors["Isaac"] = "green"

print(favoriteColors)
// Prints "["Carl": "blue", "Isaac": "green", "Neil": "red"]"

favoriteColors["Carl"] = "white"

let carlsFavColor = favoriteColors["Carl"]

print(carlsFavColor)
// prints "Optional("white")"

let jessFavColor = favoriteColors["Jessica"]

print(jessFavColor)
// prints "nil"


if let jessicaFavColor = favoriteColors["Jessica"] {
    print("Hooray!")
    print(jessicaFavColor)
}
// Nothing prints!







