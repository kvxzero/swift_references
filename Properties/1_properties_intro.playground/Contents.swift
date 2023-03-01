import Foundation

// Properties
// associate values with a particular class, structure, or enumeration
// Two major types

// Stored properties
// a constant or variable that’s stored as part of an instance of a particular class or structure

print("Stored properties")
struct storeFront {
    var fruit: String
    func printStore() {
        print("This store sells \(fruit)")
    }
}
print("Creating an apple store using the struct...")
var appleStore = storeFront(fruit: "Apple")
appleStore.printStore()

// Stored Properties of Constant Structure Instances
// a class/struct's variables can be changed unless they are defined as constants

print("\nStored properties of constants")
var regularStore = storeFront(fruit: "Pineapple")
print("Variable stores:")
regularStore.printStore()
regularStore.fruit = "Orange"
regularStore.printStore() // can change variables

let stubbornStore = storeFront(fruit: "Banana")
print("Constant stores:")
stubbornStore.printStore()
// will throw an error if we try to change the fruit value

// Lazy Stored Properties
// a property whose initial value isn’t calculated until the first time it’s used
// only var can be declared as lazy
// lazy functions can be initialized more than once during multithreading

print("\nLazy stored properties")
class theRetailer {
    let name = "lazy deviant"
}
class gamestop {
    var gameName = "God of war"
    var gameVersion = "3.0.1"
    lazy var gameOwner = theRetailer()
}

var gamerStore = gamestop()
print("Gamestop class has been initialized...")
print("Game name: \(gamerStore.gameName)")
print("Game version: \(gamerStore.gameVersion)")
print("Hmm, still theRetailer class has not been initialized yet")
print("Now initialized, Game owner: \(gamerStore.gameOwner.name)")

// Stored Properties and Instance Variables
// Swift property doesn’t have a corresponding instance variable,
// and the backing store for a property isn’t accessed directly
//
