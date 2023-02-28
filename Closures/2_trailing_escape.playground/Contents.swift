import Foundation

// Trailing closures
// You write a trailing closure after the function call’s parentheses,
// even though the trailing closure is still an argument to the function

print("Trailing closures")
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}


// Here's how you call this function without using a trailing closure:
someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})


// Here's how you call this function with a trailing closure instead:
someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

// Trailing closures examples
var values = [9, 2, 8, 1, 5]
// instead of using closure inside sorted(by: ), we are using a trailing closure
var orderedValues = values.sorted {$0 < $1} // not even parantheses are needed
print(orderedValues)

// Capturing values
// closures can capture constants and variables from the surrounding context in which it’s defined
// can then refer to and modify the values of those constants and variables from within its body,
// even if the original scope that defined the constants and variables no longer exists

// Creating a function that returns a closure with Int return
// then have variables inside that closure which can be modified for individual charateristical func

print("\nCapturing values, Making functions with closures")
func makeIncrementer(for value: Int) -> () -> Int {
    var total = 0;
    func incrementer() -> Int {
        total += value
        return total
    }
    return incrementer
}

let incrementFive = makeIncrementer(for: 5)
// calling increments by 5 and printing them
print("Incrementing by 5")
print(incrementFive())
print(incrementFive())
print(incrementFive())

let incrementThree = makeIncrementer(for: 3)
// calling increments by 3 and printing them
print("Incrementing by 3")
print(incrementThree())
print(incrementThree())
print(incrementThree())
print(incrementThree())

print("Incrementing by 5 again")
// calling increments by 5 again and printing them
print(incrementFive())
print(incrementFive())
print(incrementFive())

// it is clear that the two different variables tho they refer to the same closure, will have individual vars

// Closures as Reference Types
print("Closures as Reference types")
var alsoIncrementFive = incrementFive
print(alsoIncrementFive())
print(alsoIncrementFive())
print(alsoIncrementFive())

// Escaping closures
// A closure is said to escape a function when the closure is passed as an argument to the function,
// but is called after the function returns.
// uses @escaping annotation
// usually used in async, will update once async is covered
// print("\nEscaping closures")

// Autoclosures
// An autoclosure is a closure that’s automatically created to wrap an expression,
// that’s being passed as an argument to a function.
// It doesn’t take any arguments, and when it’s called,
// it returns the value of the expression that’s wrapped inside of it
// It’s common to call functions that take autoclosures,
// but it’s not common to implement that kind of function

print("\nAuto Closures")
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print("Customers in line...")
print(customersInLine.count)
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
// now the removal happened and the count is deduced

// You get the same behavior of delayed evaluation when you pass a closure as an argument to a function.
// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}

serve(customer: { customersInLine.remove(at: 0) } )
print(customersInLine.count)

// Overusing autoclosures can make your code hard to understand
