import Foundation

// Substrings
print("Substrings")
var string = "Example string"

// index variable has the index of the character "s" from string var
// ?? operator is used so that index variable is a non optional value
var index = string.firstIndex(of: "s") ?? string.endIndex

// range variable has the range of index starting from the character "s" till the end of the string
let range = index ..< string.endIndex

// printing the substring range sliced from main string
print("'\(string[range])' is a substring of '\(string)'")

let ending = string[range] // contains "string"
let beginning = string[..<string.index(before: index)] // contains "Example" (no blankspace in the end)

print("'\(string)' starts with '\(beginning)'")
print("'\(string)' ends with '\(ending)'")

// String comparison
// Three ways to compare
// 1. string and character equality
//    checked with == or != operators

// 2. prefix equality
//    checked with hasPrefix(_:)

// 3. suffix equality
//    checked with hasSuffix(_:)

print("\nString comparison")
print("String and character equality")
print("Corporates wants you to find the difference between these two strings")
let first = "hello"
let second = "hello"
print("> \(first) vs \(second)")
if (first==second) {
    print(": They are the same string")
}

print("\nPrefix equality")
var prefixCheck = "kvxzero"
if prefixCheck.hasPrefix("kv") {
    var index = prefixCheck.firstIndex(of: "x") ?? prefixCheck.endIndex // index of the letter "x"
    var range = index ..< prefixCheck.endIndex // range from "x" to end, which will give "xzero"
    print("'\(prefixCheck[range])' has 'kv' as a prefix")
}

print("\nSuffix equality")
var suffixCheck = prefixCheck
if suffixCheck.hasSuffix("zero") {
    var index = suffixCheck.firstIndex(of: "z") ?? prefixCheck.endIndex // index of the letter "z"
    var range = suffixCheck.startIndex ..< index // range from start to "z", which will give "kvx"
    print("'\(prefixCheck[range])' has 'zero' as a suffix, what a loser xD")
}

// Unicode Representations
// A collection of UTF-8 code units (accessed with the string’s utf8 property)
// A collection of UTF-16 code units (accessed with the string’s utf16 property)
// A collection of 21-bit Unicode scalar values, equivalent to the string’s UTF-32 encoding form (accessed with the string’s unicodeScalars property)
// For UTF allocations theory, refer documentation!
