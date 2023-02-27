import Foundation

// Function argument labels and parameter labels
// argument labels can allow a function to be called in an expressive

print("Function argument labels and parameter labels")
func greet(person: String, from dept: String) -> String {
    // here, from is a parameter label, dept is an argument label
    return "Hello \(person)! from \(dept)."
}
print(greet(person: "Anshil", from: "ECE"))
print(greet(person: "Nithish", from: "RA"))

// Omitting Argument Labels

print("\nOmitting argument labels")
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // If a parameter has an argument label, the argument must be labeled when you call the function
    print(firstParameterName, secondParameterName)
}
someFunction(1, secondParameterName: 2)

// Default Parameter Values
// If a default value is defined, you can omit that parameter when calling the function
print("\nDefault parameters")
func hello(to who: String = "World") {
    print("Hello \(who)")
}

hello()
hello(to: "kvxzero")

// Variadic Parameters
// accepts zero or more values of a specified type
// The first parameter that comes after a variadic parameter must have an argument label


print("\nVariadic Parameters")
func addition(of inputs: Int...) -> Int {
    var sum = 0
    for i in inputs {
        sum += i
    }
    return sum
}

print("Addition: 1 + 2 + 3:", addition(of: 1, 2, 3))
print("Addition: 1 + 2 + 3 + 4:", addition(of: 1, 2, 3, 4))
print("Addition: 1 + 2 + 3 + 4 + 5:", addition(of: 1, 2, 3, 4, 5))

// In out parameters
// Function parameters are constants by default
// An in-out parameter has a value that’s passed in to the function,
// is modified by the function, and is passed back out of the function to replace the original value.
// more like, call by reference in other programming langs

print("\nIn out parameters")

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var a = 10
var b = 15
print("Before swap: \(a) and \(b)")
swapTwoInts(&a, &b)
print("After swap: \(a) and \(b)")
