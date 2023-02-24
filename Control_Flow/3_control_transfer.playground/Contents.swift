import Foundation

// Control transfer statements
// they change the order in which your code is executed
// Five statements: continue, break, fallthrough, return, throw

print("Control Transfer Statements")

// Continue statement
// tells a loop to stop execution and start again at the beginning of the next iteration
print("Continue")

var textInput = "1234567890"
var removedNum = ["0", "8"]

print("Text input = \(textInput)")
print("To remove = \(removedNum)")
print("Output: ")
for i in textInput {
    if (removedNum.contains(String(i))) {
        continue // restarts when it encounters 0 and 8
    }
    print(i)
}

// Break
// ends the loop prematurely and continues with the block of code

print("\nBreak")
print("Text input = \(textInput)")
print("Character to end at: Number 7")

for i in textInput {
    print(i)
    if i == "7" {
        break // stops the loop and moves on
    }
}

// Fallthrough
// it is a feature in swift switch case statement
// in C or other languages, we explicitly state "break" so that it doesnt execute next case
// in Swift, if the case following the matched case should be executed, fallthrough is used

print("\nFallthrough")
let num = 4
var description = "The number \(num) is an"
switch num {
case let x where x%2 == 0:
    description += " even"
    fallthrough
default:
    description += " integer."
}
print(description)

// Labeled Statements
// used to explicitly state which loop or conditional statement you want a break statement to terminate

print("\nLabeled Statements")
mainLoop: for _ in 0...1000 { // label 1
    print("I am in main loop")
    nestedLoop: for i in 0...2 { // label 2
        print("I am in nested loop")
        if i == 2 {
            print("I am about to break the main loop x)")
            break mainLoop // this will break the main loop prematurely instead of going 1000 count
        }
    }
}
print("I am out of main loop woohoo")

// Early exit - Guard statement
// More or less like an if statement
// but a guard statement always has an else clause

print("\nGuard statements")

func greetings(name: String?) { // function that gets an optional string
    guard name != nil else { // if the optional string is empty, the guard ends the func execution
        print("Hello default") // and prints the default greetings
        return
    }
    print("Hello \((name)!)") // if the guard lets the code to flow, it will print the input name
}

greetings(name: "kvxzero") // function call with actual string

var nilVal: String?
greetings(name: nilVal) // function call with optional string

// Check API Availabilities - refer documentations
