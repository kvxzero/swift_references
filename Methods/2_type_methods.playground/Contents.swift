import Foundation

// Type methods
// basically just static methods from java
// declared the same way as type properties

print("Type methods")
class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // static methods
    static func printType() {
        print("I'm only human afterall")
    }
    
    static func printLife() {
        print("Eat -> Sleep -> Code -> Repeat")
    }
}

// can be accessed without an instance
Person.printType()
Person.printLife()
