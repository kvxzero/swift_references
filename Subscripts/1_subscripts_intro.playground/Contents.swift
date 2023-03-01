import Foundation

// Subscripts
// Classes, structures, and enumerations can define subscripts,
// which are shortcuts for accessing the member elements of a collection, list, or sequence

// Syntax:
//subscript(index: Int) -> Int {
//    get {
//        // Return an appropriate subscript value here.
//    }
//    set(newValue) {
//        // Perform a suitable setting action here.
//    }
//}

// Example subscript
print("Subscripts")
struct timesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return index * multiplier
    }
}

var fourTimesTable = timesTable(multiplier: 4)
print("4 x 2 = \(fourTimesTable[2])")
print("4 x 4 = \(fourTimesTable[4])")
print("4 x 6 = \(fourTimesTable[6])")
print("4 x 8 = \(fourTimesTable[8])")
print("4 x 10 = \(fourTimesTable[10])")

// Subscript Usage
// can be used for dictionaries

print("\nSubscripts in Dictionaries")

// dictionaries will return optional output (will return nil if the key doesnt exist)
var charactersList = [
    "Anemo": "Xiao",
    "Hydro": "Ayato",
    "Pyro": "Hutao"
]
print(charactersList["Anemo"]) // Anemo is the key that is used as a subscript

// Subscript Options
// can take any number of input parameters, and these input parameters can be of any type

print("\nSubscript Options")
struct startBattle {
    var charactersList = [
        "Anemo": "Xiao",
        "Hydro": "Ayato",
        "Pyro": "Hutao",
        "Cryo": "Ayaka"
    ]
    subscript(key1: String, key2: String) -> String { // multiple vals for subscripts
        if let char1 = charactersList[key1], let char2 = charactersList[key2] {
            return "\(char1) is facing off \(char2) in a battle!"
        } else {
            return "Phew, you are starting an imaginary battle, kudos!"
        }
    }
}

var battleMachine = startBattle()
print(battleMachine["Anemo", "Hydro"])
print(battleMachine["Cryo", "Pyro"])
print(battleMachine["Anemo", "Dendro"])
