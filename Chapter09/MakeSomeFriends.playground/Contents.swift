class Person {
    var name: String
    var age: Int
    var hairColor: String
    var pet: Dog?

    init(name: String, age: Int, hairColor: String) {
        self.name = name
        self.age = age
        self.hairColor = hairColor
    }

    func jump() {
        print("\(self.name) is jumping")
    }

    func greet(person: Person) {
        print("\(self.name) greets \(person.name)")
    }

    func playFetch() {
        if let unwrappedPet = self.pet {
            print("\(self.name) is playing fetch with \(unwrappedPet.name)")
        } else {
            print("\(self.name) cannot play fetch as he haven't got any pet")
        }
    }
}

class Dog {
    var name: String
    var age: Int
    var breed: String

    init(name: String, age: Int, breed: String) {
        self.name = name
        self.age = age
        self.breed = breed
    }
}

let bob = Person(name: "Bob", age: 13, hairColor: "black")
let alice = Person(name: "Alice", age: 12, hairColor: "blonde")
bob.greet(person: alice)

let max = Dog(name: "Max", age: 5, breed: "golden retriever")
bob.pet = max
bob.playFetch()
