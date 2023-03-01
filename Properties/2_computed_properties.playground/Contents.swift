import Foundation

// Computed properties
// classes, structs and enumerations can store computed properties
// they provide a getter and an optional setter to retrieve and set other properties and values indirectly

print("Computed Properties")

class Person {
    var name: String;
    var age: Int;
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var canVote: Bool { // this is a computed property
        get {
            return self.age >= 18
        }
    }
}

var karthi = Person(name: "Karthi", age: 21) // canVote calculated while this is instantiated
var krish = Person(name: "Krish", age: 14) // canVote calculated while this is instantiated

print("karthi and krish have signed up")
print("Is karthi eligible for voting? \(karthi.canVote)")
print("Is krish eligible for voting? \(krish.canVote)")

// Read only computed properties
// They are the computed properties that has only getter (and no setter)
// canVote is a read only computed property
