import Foundation

// String literals
// Swift’s String and Character types provide a fast, Unicode-compliant way to work with text in your code
// String concatenation is done with a simple + operation
// String mutability depends on the type of variable (var or let)

// if you import Foundation, you can access those NSString methods on String without casting.

// String variables
// double quotes for strings (as always)
let string = "this is a test string"

// triple double quotes for multiline input (with the """ on new lines, both beginning and the end)
var multiline = """
hello
world
with
multiple
lines
"""

// the type of operator used for storing strings doesnt matter

print("Single and multiline strings demo")
let single = "hello world"
let multi = """
hello world
"""

print(single == multi)

// line breaks in the multiline string input is also reflected in the stored variable
// to break lines in the input without reflecting them on the variable (just to improve readability)
// add \ to the end of the line

multiline = """
hello \
world
"""
print(multiline == single)

// The escaped special characters
// \0 (null character),
// \\ (backslash),
// \t (horizontal tab),
// \n (line feed),
// \r (carriage return),
// \" (double quotation mark) and \' (single quotation mark)

// Unicodes
// unicode values can also be stored in strings using \u{}
print("\nUnicode Demo")

print("\u{2665}", terminator: " ")
print("\u{2663}")

// String Delimiter
// # can be used to be a string delimiter which will ignore all the escape sequences inside
// for eg, "hello\nworld" will print hello and world across two lines
// but if we use delimiter, #"hello\nworld"#, it will print literally the output
// watch this

print("\nString delimiter - #")
var delim = #"hello\nworld"#
print(delim)

// but, to access certain escape sequences in a string, the same delimiter can be used inbetween the sequence
// like #"hello\#nworld"#

delim = #"hello\#nworld"#
print(delim)

// Initializing empty strings
// self explanatory

let str1 = ""
let str2 = String()

// String mutability
// depends on the type of the variable that is storing the strings
print("\nString mutability")
var variable = "hello, "
let cons = "hello, "

// variable is initialized as "var" and therefore mutable
variable += "world"
print(variable)

// cons is initialized as "let" and therefore immutable
// cons += "world" // will throw an error

// Strings are value types in Swift
// When strings are passed to a function, the values are passed, not the references
// Swift’s compiler optimizes string usage so that actual copying takes place only when absolutely necessary.
