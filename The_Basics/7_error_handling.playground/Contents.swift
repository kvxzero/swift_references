import Foundation

// Error handling is used to respond to the errors that may arise in the program
// When a func encounters an error, it throws it (╯°□°)╯︵ ┻━┻

func canThrowError() throws {
    // may or may not throw an error hehe
}

// to handle errors, do try and catch is used

do {
    try canThrowError()
} catch {
    print("Hippity Hoppity, The error is now my property")
}


// assertions and preconditions are checks that happen during runtime
// if assertion/precondition == true, code flows
// else code breaks, as simple as that :)

// Assertions
// majorly used to enforce valid data and to predict invalid states and debug easily

let age = 16
assert(age > 18, "Who let the child to access the internet?")

// throws an Assertion failed error along with the error msg that is custom specified

if age > 21 {
    print("You are eligible for 21+ movies")
} else if age >= 18 {
    print("You can eligible for 18+ movies")
} else {
    assertionFailure("WHO LET THE CHILD IN AGAIN!!")
}

// we can throw assertion failed error using assertionFailed() function too

// Preconditions
// precondition can be false, but it MUST BE TRUE for your code to continue execution

var index = -1
precondition(index > 0, "Index cannot be less than zero duh!")

