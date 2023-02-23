import Foundation

// Iterating thru a string
// Just like python, iterating thru the string is easy
print("Iterating thru string")
var string = "cap"
for char in string {
    print(char)
}

// Character variables and arrays
print("\nCharacter vars and arrays")
let char: Character = "?"
print(char)
let charArr: [Character] = ["w", "o", "o", "f"]
print(charArr)
let charString = String(charArr)

// Concatenation of Strings and Characters
print("\nConcatenation")
var str1 = "hello"
var str2 = "world"

// If both inputs are strings, direct + will give us concatenated string
print(str1 + str2)

// If the input is a character, it must be converted to string using String()
print(charString + String(char))
str1 += str2 // compound operators also work
str1.append(String(char)) // .append() function can also be used to concat a string
print(str1)

// note: concat cannot be performed on a CHARACTER variable (obviously)

// String interpolation
// a way to construct a new String value from a mix of constants, vars, and other expressions
print("\nString interpolation")
var pi = 3.14
var radius = 5.0
print("The area of a circle with radius = \(radius) is \(pi*radius*radius)")

// note: string delimiter can also be used for string interpolations
print(#"The area of a circle with radius = \(radius) is \(pi*radius*radius)"#)
print(#"The area of a circle with radius = \(radius) is \#(pi*radius*radius)"#)
print(#"The area of a circle with radius = \#(radius) is \(pi*radius*radius)"#)
