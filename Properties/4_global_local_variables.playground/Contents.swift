import Foundation

// Global variables
// variables that are defined outside of any function, method, closure, or type context

// Local variables
// variables that are defined within a function, method, or closure context

// Global constants and variables are always computed lazily (no need to mark with lazy keyword)
// Local constants and variables are never computed lazily

class printValueXTimes {
    var value: Int; // global variable
    init (value: Int) {
        self.value = value
    }
    func printMe(x: Int) {
        var count = x // local variable
        print("Printing now...")
        for i in 0...count {
            print("Value is \(value), Count: \(i)")
        }
    }
}

var seven = printValueXTimes(value: 7)
seven.printMe(x: 3)
