func makePizza(ingredients: String) -> String {
    print("Flattening the dough to form a round pizza ✋")
    print("Adding some tomato sauce 🍅")
    print("Adding some mozzarella cheese 🧀")
    print("Adding some \(ingredients)")
    print("Preparing the pizza in the oven ♨️")
    print("Done! Delicious pizza ready to be eaten 🍕")
    return "Pizza with \(ingredients)"
}

let pizzaWithMeatballs = makePizza(ingredients: "meatballs 🐮")
let pizzaWithSlicedHam = makePizza(ingredients: "sliced ham 🐷")
let pizzaWithShrimps = makePizza(ingredients: "shrimps 🍤")

print(pizzaWithMeatballs)
print(pizzaWithSlicedHam)
print(pizzaWithShrimps)
