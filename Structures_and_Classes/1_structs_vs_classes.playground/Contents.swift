import Foundation

// Both Structures and Classes can:
// > Define properties to store values
// > Define methods to provide functionality
// > Define subscripts to provide access to their values using subscript syntax
// > Define initializers to set up their initial state
// > Be extended to expand their functionality beyond a default implementation
// > Conform to protocols to provide standard functionality of a certain kind

// But there are few features that classes have (which structures don't)
// > Inheritance enables one class to inherit the characteristics of another.
// > Type casting enables you to check and interpret the type of a class instance at runtime.
// > Deinitializers enable an instance of a class to free up any resources it has assigned.
// > Reference counting allows more than one reference to a class instance.

// Definition of classes and structures
// Creation of classes and structures means that we are creating a swift type
// all swift types must follow UpperCamelCase naming convention

struct rectangle {
    var height = 10
    var width = 20
}
class circle {
    var radius = 5
    var pi = 3.14
}
print("Defining classes and structures")
var newRectangle = rectangle()
var newCircle = circle()
print("Initialized class: \(type(of: newRectangle))")
print("Initialized structure: \(type(of: newCircle))")

// Accessing Properties
// properties of both of em can be accessed using dot syntax

print("\nAccessing properties")
print("Default Rectangle: height = \(newRectangle.height), width = \(newRectangle.width)")
print("Default Circle: radius = \(newCircle.radius), pi = \(newCircle.pi)")

// Memberwise Initializers for Structure Types
// by default, structures has memberwise initializers where you can specify vals for the members
// whereas for classes, default initializer is an empty initializer

print("\nMemberwise Initializers for structs")
var secondRectangle = rectangle(height: 100, width: 200)
print("Initialized rectangle: height = \(secondRectangle.height), width = \(secondRectangle.width)")

// Structures are value types
// in the following declaration, the secondCircle has a COPY of the newCircle
// (i.e different memory locations)
// Enums are also value types

print("\nStructs -> Value types")
print("Creating a copy of secondRectangle (value type)")
var thirdRectangle = secondRectangle
print("There are no predefined ways to compare two structs")
print("One way is to overload == (Equatable) func")

// Classes Are Reference Types
// in the following declaration, both secondCircle and newCircle points to the SAME MEMORY LOCATION

print("\nClasses -> Reference types")
print("Creating a copy of newCircle (reference type)")
var secondCircle = newCircle

// === and !== are used for comparing two class instances (in terms of references)

print("Does the two class variables point to same memory: \(secondCircle === newCircle)")

// Pointers
// used to refer to addresses in memory
// A swift constant or variable that refers to an instance of some reference type is similar to a pointer
// but isn’t a direct pointer to an address in memory, and doesn’t require you to write an asterisk (*)
// these references are defined like any other constant or variable in swift
