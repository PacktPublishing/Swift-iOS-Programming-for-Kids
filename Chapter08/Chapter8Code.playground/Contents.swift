let stuff = ["Coloring Book", "Marvel Comic", "Buttercup", "Moby Dick"]


func removeBadItems(list: [String]) -> [String] {
    var newList: [String] = []
    for item in list {
        if item == "Buttercup" {
            print("Sorry, you're not allowed to bring that here to the Moon.")
        } else {
            newList.append(item)
        }
    }
    return newList
}


let validStuff = removeBadItems(list: stuff)