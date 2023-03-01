import Foundation

// Type properties
// basically just static variables in java, weird naming
// static keyword

class HogwartsLibrarian {
    var name: String
    static var libraryName: String = "Hogwarts" // static variable
    
    init(name: String) {
        self.name = name
    }
}

var davis = HogwartsLibrarian(name: "Davis")
var anna = HogwartsLibrarian(name: "Anna")

// static values are accessed using class names and not instances
print("Hii, this is \(davis.name) from \(HogwartsLibrarian.libraryName)")
print("Howdy, I'm \(anna.name) from \(HogwartsLibrarian.libraryName)")
