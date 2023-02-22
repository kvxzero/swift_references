import Foundation

// types in variables

var x = 10 // x is Integer
var name = "joe" // name is String

// this will throw an error cuz x is declared as int by swift type inferencing
// x = "mama"

// Swift has type inferencing
// Just by assigning values, swift will infer the type of variable
// This is called implicit types
// You can also specify the types explicitly by using type annotations

var xd: Int = 6999

// this is how type annotations work

// var y: Int = "hello world"
// the above code throws an error because we explicitly mentioned a diff type and
// tried to assign something else

print(type(of: x))
print(type(of: xd))
print(type(of: name))

// different types
var a: Int = 69
var b: Float = 6.99 // 32 bit floating point num
var c: Double = 69.999999 // 64 bit floating point num

// unsigned int
var d: UInt8 = UInt8.max
var e: UInt16 = UInt16.max
var f: UInt32 = UInt32.max
var g: UInt64 = UInt64.max
var h: Bool = true
print(d, e, f, g, !h)

// good to have explicit types for better readability

