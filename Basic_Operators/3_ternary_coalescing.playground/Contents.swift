import Foundation

// Ternary operator
// Assignment along with conditional check

let a = 10
let b = 9

// ?: is the ternary operator
// if true, value 1 will be assigned
// else value 2 will be assigned

let val = a < b ? b : a
print(val)

// Nil coalescing operator
// unwraps an optional IF it has value
// else returns a default value

let defaultValue: String = "default value assigned" // Default value
var optionalValue: String? // Optional value
var String = optionalValue ?? defaultValue // optional value is nil, therefore default is assigned
print(String)

// Range operators
// There are several range operators

// Closed range operator
// ... operator

print("Demo of Closed Range")
for i in 1...5 {
    print(i)
}

// Half open range operator
// ..< or ..> operator
// a..<b will be a to b-1 range

print("\nDemo of Half Open Range")
for i in 1..<5 {
    print(i)
}

// One sided range operator
// majorly used for collections
// [i...] or [...i] only

print("\nDemo of One sided Range (One)") // starts from index = 2 till end element
var array = ["Hi", "Hello", "Bonjour", "Si Senor"]
for i in array[2...] {
    print(i)
}

print("\nDemo of One sided Range (Two)") // starts from index = 0 till index = 2
for i in array[...2] {
    print(i)
}

// Half-open range operator also has a one-sided form that’s written with only its final value
// array[..<2] or array[2<..] also works

// One-sided ranges can be used in other contexts, not just in subscripts
// you can define a variable of array using one-sided ranges too

print("\nInitializing a variable using ranges")
let rangeArr = ...5
print(rangeArr)
print(type(of: rangeArr))
print()

print("Does rangeArr contain -1?", rangeArr.contains(-1))
print("Does rangeArr contain 0?", rangeArr.contains(0))
print("Does rangeArr contain 6?", rangeArr.contains(6))
