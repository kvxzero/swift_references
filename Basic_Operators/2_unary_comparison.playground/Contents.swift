import Foundation

// Unary minus operator is straight forward
// Any number with unary operator will become the negative of the same num
// Pretty much num * -1

var num = 6
var negativeNum = -num
print(num, "became", negativeNum)

// Unary plus operator is pretty tricky
// Pretty much num * +1
// Useless in reality, only used to provide symmetry in code

negativeNum = -10
var alsoNegative = +negativeNum
print(negativeNum, "remained", alsoNegative)

// Compound assignment operators
// If you are familiar with any other language, then this is a piece of cake as usual
// +=, -=, /=, *= etc

print("Num is \(num)")
num+=5
print("Incremented to \(num)")

// Comparison operators
// As the name suggests, it is used to compare two values

print("\nComparisons bool outputs:")
print("Is 1 equal to 1?", 1 == 1)
print("Is 2 not equal to 1?", 2 != 1)
print("Is 2 smaller than 1?", 2 < 1)
print("Is 2 greater than 1?", 2 > 1)
print("Is 2 greater than or equal to 2?", 2 >= 2)
print("Is 3 smaller than or equal to 2?", 3 <= 2)
print()

// Boolean values can be compared only with != and ==
// other operators are not supported

// Similar comparison for strings as well

var name = "kvxzero"

if name == "kvxzero" {
    print("Howdy boi \(name), Welcome")
} else {
    print("Mom, my system is compromised again!")
}

// Comparison kinda gets weird when it comes to tuples

print((1, "zebra"), "is less than", (2, "apple"), "?", (1, "zebra") < (2, "apple"))
// true because 1 is less than 2; "zebra" and "apple" aren't compared

print((3, "apple"), "is less than", (3, "bird"), "?", (3, "apple") < (3, "bird"))
// true because 3 is equal to 3, and "apple" is less than "bird" (ASCII wise)

print((4, "dog"), "is equal to", (4, "dog"), "?", (4, "dog") == (4, "dog"))
// true because 4 is equal to 4, and "dog" is equal to "dog"
