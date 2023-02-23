import Foundation

// Dictionaries
// Stores key value pairs (just like python)
// keys should be unique
// doesnt follow order either

print("Dictionaries")
var dicto: [Int: String] = [:]

// assigning key values
dicto[1] = "first"
dicto[2] = "second"
dicto[10] = "tenth"
print(dicto)

dicto = [:] // clears the dicto
dicto.removeAll() // similar function to clear the dicto

// similar to other collections, it can also be initialized with literals

dicto = [1: "ONE", 2: "TWO", 10: "TEN"]
print(dicto)

var clubs: [String: String] = [
    "PSG": "MBAPPE",
    "JUVENTUS": "RONALDO",
]
print(clubs)

// Updating the key values
clubs["PSG"] = "MESSI"
print(clubs)

// Accessing and modifying a dictionaries
print("\nAccessing and Modifying Dictionaries")

// .count to count the num of vals in the set
print("Popular clubs at the moment are: \(clubs.count)") // return the count of elements in the dict
print("I dont think that the clubs are empty, Is it? \(clubs.isEmpty)") // returns true if the dict is empty

print("\nUpdating the dict...")
clubs["MAN CITY"] = "HALLAND" // now dict will have extra key and value
print("Now, Popular clubs at the moment are: \(clubs.count)")

// updating the dictionary
if let oldValue = clubs.updateValue("NEYMAR", forKey: "PSG") {
    print("The old star player of PSG is \(oldValue).")
    print("The new star is... \(clubs["PSG"]!)") // it is an optional string now :0
}

// Removing a value from the dict using nil assignment
print("\nRemoving a value from the dict")
print("Before: \(clubs)")

clubs["JUVENTUS"] = nil // now this value is removed (both the key and the value)
print("After: \(clubs)")

// Removing a value from the dict using .remove
print("\nAlternate way to delete using .remove")
print("Adding Dybala to the mix")
clubs["JUVENTUS"] = "DYBALA"
print("Before: \(clubs)")

print("\nDeleting using .remove...")
if let removedVal = clubs.removeValue(forKey: "MAN CITY") { // .remove to remove a value from dict
    print("The removed player name is \(removedVal).")
} else {
    print("The club doesnt contain the value!")
}
print("After: \(clubs)")

// Iterating thru a dictionary
// similar to that of other collections
// for in loop

print("\nIterating thru a dictionary")
for (clubName, clubPlayer) in clubs {
    print("\(clubPlayer) belongs to \(clubName)")
}

// .keys can be used to get the array of keys
print("\nIterating thru keys")
print("GOAT Clubs: ")
for clubName in clubs.keys {
    print("> \(clubName)")
}

// .values can be used to get the array of values
print("\nGOAT Players: ")
for player in clubs.values {
    print("> \(player)")
}

// we can also initialize an array of keys or values like the following
print("\nArray of keys and Array of values")
let clubNames = [String](clubs.keys)
let clubPlayers = [String](clubs.values)

print("Clubs: \(clubNames)")
print("Players: \(clubPlayers)")
