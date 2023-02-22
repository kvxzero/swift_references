import Foundation

// Logical operators
// they combine two boolean values (true or false)
// used to build compound conditions

// Swift supports 3 major logical operators

// Logical NOT (! operator)
// Takes only one input
// Negates the existing bool value (True -> False, False -> True)

print("Logical NOT Demo")
let loginFlag = true // true will execute else part
if !loginFlag { // NOT(false) = true
    print("> GUEST USER")
} else {
    print("> REGISTERED USER")
}

// Logical AND (&& operator)
// Takes two inputs
// Returns true ONLY IF both the conditions are true

print("\nLogical AND Demo")
let loggedIn = true
let passwordCheck = true
if loggedIn && passwordCheck {
    print("Welcome user!")
} else {
    print("Unverified user, Get out!")
}

// Logical OR (|| operator)
// Takes two inputs
// Returns true IF ANY ONE of the two conditions are true

print("\nLogical OR Demo")
let fingerprintCheck = false
if passwordCheck || fingerprintCheck {
    print("Login method: Fingerprint OR Password")
}

// Combining logical operators
// Multiple conditions can be combined using multiple logical operators

// It is also useful to include parentheses (explicit parantheses)
// to make the intention of a complex expression easier to read

print("\nComplex Condition Demo")
if (loginFlag) && (passwordCheck || fingerprintCheck) {
    // the condition is true ONLY when the loginFlag is true
    // as well as EITHER PASSWORD LOGIN OR FINGERPRING SHOULD BE TRUE
    print("You successfully logged in!")
}
