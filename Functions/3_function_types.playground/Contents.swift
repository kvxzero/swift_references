import Foundation

// Function Types
// Every function has a specific function type
// made up of the parameter types and the return type of the function.

print("Function types")
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
func subTwoInts(_ a: Int, _ b: Int) -> Int {
    return a - b
}
func divideTwoInts(_ a: Int, _ b: Int) -> Int {
    return a / b
}

let a = 3, b = 3
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Add: \(mathFunction(a, b))")

mathFunction = subTwoInts
print("Sub: \(mathFunction(a, b))")

mathFunction = multiplyTwoInts
print("Multiply: \(mathFunction(a, b))")

mathFunction = divideTwoInts
print("Divide: \(mathFunction(a, b))")

// Swift can also infer function type without explicitly stating them
var anotherMath = addTwoInts
print("Inferred type:", type(of: anotherMath))

// Function Types as Parameter Types
// can use a function type as a parameter type for another function

print("\nFunction types as Parameter Types")
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("\(mathFunction(a, b))")
}

print("Addition - ", terminator: "")
printMathResult(addTwoInts, a, b)

print("Subtraction - ", terminator: "")
printMathResult(subTwoInts, a, b)

print("Multiplication - ", terminator: "")
printMathResult(multiplyTwoInts, a, b)

print("Division - ", terminator: "")
printMathResult(divideTwoInts, a, b)

// Function Types as Return Types
// can use a function type as the return type of another function
// refer documentation for complex codes

// Nested functions
// functions defined inside the function
// is valid only inside that function

print("\nNested functions")
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 } // nested function 1
    func stepBackward(input: Int) -> Int { return input - 1 } // nested function 2
    return backward ? stepBackward : stepForward // ternary operator to check which function to call
}

var currentValue = -4 // value is -4
print("Starting at point: \(currentValue)")
print("Moving now ~")
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0) // function type saved in var

// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue).. ")
    currentValue = moveNearerToZero(currentValue)
}
print("reached zero!")
