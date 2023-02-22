import Foundation

// Variables, Constants and Statics

// Variables initialized with var are mutable (aka) can be modified.

var mutable = "Hello World"
mutable += ", I am new"
print(mutable)

// Using colon, the type of the variable can be explicitly mentioned
// Integers (Unsigned, Signed, 32 and 64 bits), Floats (32 bit), Doubles (64 bit), Strings, Characters

var integer: Int = 10
integer+=1
print(integer)

// Variables initialized with let are immutable (aka) final or Constant

let integer2: Int = 10
// below code will throw an error
// integer2+=1
print(integer2)

// Statics
class Person {
    static let age = 18
    var personName: String
    
    init(name: String) {
        personName = name
    }
    func printName() {
        print("Hi, I am \(personName)")
    }
    static func printAge() {
        print("& I am \(age) years old")
    }
}

var dave = Person(name: "Dave")
dave.printName()
Person.printAge()

var steve = Person(name: "Steve")
steve.printName()
Person.printAge()
