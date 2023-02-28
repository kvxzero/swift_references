import Foundation

// Closures
// self-contained blocks of functionality that can be passed around and used in your code.

print("Closures")
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(names.sorted())
print(names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 }))

// Inferring Type From Context
// Swift can infer the types of its parameters and the type of the value it returns

print("\nInferring type from context")
print(names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 }))
// can be written as
print(names.sorted(by: {s1, s2 in return s1 > s2} ))

// Implicit Returns from Single-Expression Closures
print("\nImplicit returns, can be simple: ", terminator: "")
print(names.sorted(by: { s1, s2 in s1 < s2 } ))

// Shorthand Argument Names
// the closure expression can be even smaller
print("With shorthands, even simpler: ", terminator: "")
print(names.sorted(by: {$0 > $1})) // $0, $1, $2... refers to the first, second, third... arguments

// Operator Methods
// There’s actually an even shorter way to write the closure expression above
// just pass the operator
// swift will infer that you want to use its string-specific implementation

print("With operator methods, it is the simplest: ", terminator: "")
print(names.sorted(by: <))
