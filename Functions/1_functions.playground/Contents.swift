import Foundation

// Functions
// block of codes that performs a certain task

// Defining and calling functions

print("Defining and calling basic functions")
func helloWorld() -> String { // -> signifies the return type
    return "Hello, World"
}
print(helloWorld())

// Functions with paramters and return types
print("\nFunctions with params and return")
func ping(name: String) -> String { // name is a parameter of string type
    return "Pinged \(name)"
}

// printing pings based on the input text
print(ping(name: "anshil.me"))

func pingAgain(name: String) -> String { // another function with similar syntax
    return "Pinging \(name) again"
}

// bigger function that calls two functions inside
func pingPerson(name: String, again: Bool = false) -> String {
    // the second parameter here, "again" is a default parameter
    // if the value for again is not specified, it is taken as false
    if again {
        return pingAgain(name: name)
    }
    return ping(name: name)
}

print(pingPerson(name: "kvxzero"))
print(pingPerson(name: "kvxzero", again: true))

// Functions with Multiple Return Values
// multiple values can be returned from the function by using tuples

print("\nFunction with multiple returns")
func minAndMax (array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for i in array { // looping through the array and finding min and max values
        if i < currentMin {
            currentMin = i
            continue
        }
        if i > currentMax {
            currentMax = i
            continue
        }
    }
    return (currentMin, currentMax)
}

var array = [1, 2, 3, 4, 5, 6, -1, -2, -3, -4]
print(minAndMax(array: array))

// Optional tuple return type
// an optional tuple return type can be used to convey that the entire tuple can be nil.

print("\nOptional tuple return")
func arrayCalc (array: [Int]) -> (sum: Int, multi: Int)? {
    if (array.isEmpty) {
        return nil
    }
    var sum = 0
    var multi = 1
    for i in array {
        sum += i
        multi *= i
    }
    return (sum, multi)
}

var array2: [Int] = []
if let output = arrayCalc(array: array) { // Optional value binding
    print("Array1: \(output)")
}

if let output = arrayCalc(array: array2) {
    print("Array2: \(output)")
} else {
    print("Bruh the array is empty :(")
}

// Functions With an Implicit Return
// If the entire body of the function is a single expression
// the function implicitly returns that expression
// not recommended to use implicit returns

print("\nImplicit return function")
func greet(name: String) -> String{
    "Hello \(name)"
}

print(greet(name: "kvxzero"))
print(greet(name: "anshil.me"))
