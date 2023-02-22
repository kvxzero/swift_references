import Foundation

// If statements are usually used to check whether the optional can be unwrapped
// and they are forcefully unwrapped in runtime

var num: String = "123"
var possibleNum = Int(num)
print("This possibleNum variable is of type", type(of: possibleNum))

if possibleNum != nil {
    print("The value of possibleNum (String -> Integer) is \(possibleNum!)")
    // ! is used to forcefully unwrap optionals
}

// Optional binding is also carried out using a conditional check
// if statements are usually used
// assign the value of an optional to a temporary variable IF it contains any value

if let temp = Int(num) {
    print("The given string \(num) can be converted into integer: \(temp)")
} else {
    print("Convertion is not possible, Optional binding failed :)")
}

// Multiple optional bindings as well as conditions can be included in an If statement
// Separated with commas only

var num1 = 45
var optionalNum: String = "55"
var tempNum: String = "15"

// Conditions chaining using commas and && operators

if let num3 = Int(tempNum), let num2 = Int(optionalNum), num3<num2 && num3<num1 {
    print("The smallest num is \(num3)")
} else if let num3 = Int(tempNum), let num2 = Int(optionalNum), num2<num3 && num2<num1 {
    print("The smallest num is \(num2)")
} else {
    print("The smallest num is \(num1)")
}

// Implicitly unwrapped optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point
print(forcedString)

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point
print(implicitString)

// Can check whether an implicitly unwrapped optional is nil the same way you check a normal optional
// Better to not use implicitly unwrapped optional if there is a possibility of the var to go nil
