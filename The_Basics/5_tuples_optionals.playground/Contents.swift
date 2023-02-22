import Foundation

// Tuples are the types of data structure where two or more values are compounded into single component
// The types of values stored in a tuple can be different

var biggerTuple = (69, 69, 69)
print(biggerTuple)
let http404error = (404, "Not Found!")

// type of to show the type of data in tuple
print(type(of: http404error))

// getting individual data from a tuple variable
let (errorCode, errorDef) = http404error
print("The error code is", errorCode)
print("The error definition is", errorDef, "\n")

// getting specific data from a tuple variable
let (_, definition) = http404error
print("Only the def:", definition, "\n")

// indexing in tuples
print(http404error.0)
print(http404error.1, "\n")

// tuples can also have definitions and keys like a dictionary

var http200Status = (code: 200, status: "OK")
print("Demonstration of keys in tuples")
print(http200Status.code)
print(http200Status.status, "\n")

// Optionals
// Optionals are like default values that are used when a value is missing
// Either value is present which u can unwrap and use or there is no value (Only 2 possibilities)

print("Optionals demo")
let number = "123"
let possibleNumber = Int(number)
print(type(of: possibleNumber))
print(possibleNumber!) // ! operator is used to unwrap the optional value and return it

// nil demo
var code: Int? = 404
code = nil

// nil signifies that the variable has no value
// nil cannot be assigned for variables that are NOT OPTIONAL VARS

var answer: String?
// when an optional variable is created without mentioning a value, it assumes the default value: nil
print(answer)

// nil doesnt point to a null object like in objective-c
// nil literally means NO VALUE in swift :)
