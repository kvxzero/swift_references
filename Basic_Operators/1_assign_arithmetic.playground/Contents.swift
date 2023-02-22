import Foundation

// Assignment operators
// we all know what this is right
// ...right?
// sighs, = is the assignment operator

var x = 10
let y = 69
x = y
print("x got assigned to", x)

// Arithmetic operators
// +, -, /, * and remainder operator %

print("Addition: 1 + 1 =", 1+1)
print("Subtraction: 4 - 1 =", 4-1)
print("Multiplication: 6 * 6 =", 6*6)
print("Division: 6 / 2 =", 6/2)
print("Remainder of 4 % 3 =", 4%3)

// Addition operator also works as concat operator for Strings
print("hello" + ", world")

// How remainder operator works in negative numbers (important)
var a = -9
var b = 4
print("-9 divided by 4 leaves", a%b)

// how that works?
// 4 * -2 = -8 | -9 - (-8) = -1

print("-9 / 4 =", a/b)
