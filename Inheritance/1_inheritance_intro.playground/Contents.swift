import Foundation

print("A lot of definitions here, codes are in file #2 :D")

// Inheritance - OOPS
// A class can inherit methods, properties, and other characteristics from another class
// Swift classes don’t inherit from a universal base class (like java)
// Classes you define without specifying a superclass automatically become base classes=

// Base class
// Any class that doesn’t inherit from another class is known as a base class

// Child class
// Any class that has a super class is called child class

// Overriding
// child class's own custom implementation of
// an instance method, type method, instance property, type property,
// or subscript that it would otherwise inherit from a superclass

// Accessing Base/Super class Methods, Properties, and Subscripts
// super keyword is used to access those methods
// super.someMethod, super.someProperty, super[someIndex]

// Overriding Methods
// prefix using override keyword (before func)

// Overriding properties
// to provide your own custom getter and setter for that property,
// or to add property observers to enable the overriding property to observe changes in underlying property

// Overriding property observers
// can use property overriding to add property observers to an inherited property
// (as long as it is not a constant)

// Preventing overrides
// prevent a method, property, or subscript from being overridden by marking it as final
// can also mark a class as final to prevent inheritance too
