import Foundation

// Funcs and Parameters
// Simple function to add two numbers
// x and y are parameters
// -> Int signifies the return type of the given function

func addTwoNumbers(x: Int, y: Int) -> Int {
    return x+y
}

print("Adding two nums =", addTwoNumbers(x: 25, y: 26), "\n")
 
// self learn exercise: odd or even
func oddEven(x: Int) -> Bool {
    if x%2 == 0 {
        return true
    }
    return false
}

print("2 is even:", oddEven(x: 2))
print("3 is even:", oddEven(x: 3))
print("3 is odd:", !oddEven(x: 3))
print()

// self learn exercise: find the factorial using recursion

func findFactorial(x: Int) -> Int {
    if x == 1 {
        return 1
    }
    if x == 0 {
        return 0
    }
    return x*findFactorial(x: x-1)
}

print("Factorial of 6 is", findFactorial(x: 6))


