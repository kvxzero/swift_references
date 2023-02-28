import Foundation

// Associated Values
print("Associated values")

// Enumerations similar to these are known as
// discriminated unions, tagged unions, or variants in other programming languages.

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
    
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

// Raw values
// enumeration cases can come prepopulated with default values (called raw values),
// which are all of the same type.

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

print("Hello, testing tab \(ASCIIControlCharacter.tab.rawValue) space")
print("Hello, testing lineFeed \(ASCIIControlCharacter.lineFeed.rawValue) - which makes it next line bruh")

// Implicitly Assigned Raw Values
// don’t have to explicitly assign a raw value for each case
// swift auto assigns value (like excel)

print("\nImplicitly Assigned Raw Values")

// example
enum planets: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print("Planets assigned, let's check their count")
print("Mercury is number \(planets.mercury.rawValue)")
print("Venus is number \(planets.venus.rawValue)")
print("Uranus is number \(planets.uranus.rawValue)")

// Initializing from a Raw Value
// raw value can be used to assign an enum value, just like an index
// but a bit different, like a key value pair in dictionary

print("\nInitializing from a Raw Value")
var possiblePlanet = planets(rawValue: 8) // this will be an optional planet type
print("The planet inferred is \(possiblePlanet!)") // therefore, we are forcefully unwrapping it

if let newPlanet = planets(rawValue: 9) {// or we can use optiona
    print("The planet inferred is \(newPlanet)")
} else {
    print("The given value is not inferrable!")
}

// Recursive Enumerations
// has another instance of the enumeration as the associated value for one or more of the enumeration cases
// indirect keyword is used to define an enum as recursive

print("\nRecursive Enum")

indirect enum ArithmeticExpression { // recursive enums
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    // evaluation function for recursive calls
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right) // recursive function
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right) // recursive function
    }
}

let five = ArithmeticExpression.number(5)
print("First value: \(evaluate(five))") // converts the .number to actual Int and returns
let four = ArithmeticExpression.number(4)
print("Second value: \(evaluate(four))") // converts the .number to actual Int and returns

var sum = ArithmeticExpression.addition(five, four)
var product = ArithmeticExpression.multiplication(five, four)

// converts the .addition to actual expressions
// and evaluates the both values to integers thru recursion
// and then return the addition of two values
print("Addition of the two values: \(evaluate(sum))")

// converts the .multiplication to actual expressions
// and evaluates the both values to integers thru recursion
// and then return the multiplication of two values
print("Multiplication of the two values: \(evaluate(product))")
