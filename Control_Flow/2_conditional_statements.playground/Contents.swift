import Foundation

// Conditional statements
// If else

print("Conditional statement")
print("\nIf else statements")
var value: Int? = 69
if value != nil {
    print("value var exists")
} else {
    print("value var doesnt exist")
}

print("\nIf else tree")
var a = 7, b = 6, c = 5
print("a = \(a), b = \(b), c = \(c)")

if (a < b && a < c) {
    print("a is the smallest value")
} else if (b < a && b < c) {
    print("b is the smallest value")
} else {
    print("c is the smallest value")
}

// Switch statement
// Unlike the switch statements in C or Obj-C or Java, No implicit fall thru is present
// i.e no need to specify break
// Although break isn’t required in Swift, you can still use them for other purposes

print("\nSwitch statements")

var x = 0

switch x {
case 0:
    print("value of x is 0")
case 1:
    print("value of x is 1")
default:
    print("value of x is non binary")
}

// Interval Matching
// Values in switch cases can also be checked for their inclusion in an interval.

print("\nInterval matching")
x = 69
print("the value of x = \(x)")

switch x {
case 0...50: // range 0 to 50
    print("the value of x is greater than 0 but less than 51")
case 51...100: // range 51 to 100
    print("the value of x is greater than 50 but less than 100")
default:
    print("the value of x is out of range")
}

// Tuples can also be used in switch
// one or two specified values can be matched in a tuple
// and _ (underscore character) can be used for ignored values
// range can also be used in the tuple

print("\nTuple matching")
var z = (1, 69)
print("the value of z is \(z)")

switch z {
case (1, _): // only 1 is matched, 69 is ignored, can be done for vice versa
    print("the first value of z is matched, and it is 1")
default:
    print("oops, unmatched case")
}

// Value bindings
// Can name the value or values it matches to temporary constants or variables
// the values are bound to temporary constants or variables within the case body

print("\nValue binding")
let anotherPoint = (2, 0)

switch anotherPoint {
case (let x, 0):
// the value of 2 is assigned to the temp variable x
// and x can be any value as long as 0 is matched, x value is inferred
    print("on the x-axis with an x value of \(x)")
    
case (0, let y):
// works the same way as the above case
    print("on the y-axis with a y value of \(y)")
    
case let (x, y):
// works the same way as the above case
    print("somewhere else at (\(x), \(y))")
}

// Where clause
// Used to check additional conditions in the cases

print("\nWhere clause")
let newPoint = (1, 1)
print("The new point is \(newPoint)")

switch newPoint {
case (let x, let y) where x==y:
    print("the given tuple contains the same vals twice")
default:
    print("the given tuple doesnt contain the same val")
}

