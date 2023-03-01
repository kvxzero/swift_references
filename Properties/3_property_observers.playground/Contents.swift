import Foundation

// Property Observers
// observe and respond to changes in a property’s value
// called every time a property’s value is set,
// even if the new value is the same as the property’s current value

// can add property observers in the following places:
// > stored properties that you define
// > stored properties that you inherit
// > computed properties that you inherit

// If you pass a property that has observers to a function as an in-out parameter,
// the willSet and didSet observers are always called

// willSet and didSet are the keywords used for this purpose
print("Property Observers")
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
// when the value is set for the first time, willSet is executed
// didSet is also executed but due to the if condition, the clause is not executed
stepCounter.totalSteps = 200

// here values are incremented and so the willSet and didSet both were executed
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896

// since the value that is being updated here is to a lower value, if clause inside didSet is skipped
stepCounter.totalSteps = 500

// Property Wrappers
// enforces a rule for value intake

print("\nProperty Wrapper")

// below is the struct for propertyWrapper
@propertyWrapper
struct ageRestriction {
    private var age: Int? = nil
    private var allowedLimit: Int
    var wrappedValue: Int? {
        get {
            return age;
        }
        set {
            if (newValue! < allowedLimit) {
                print("Invalid input for age. Min = \(allowedLimit)")
                age = nil
            } else {
                age = newValue
            }
        }
    }
    init () {
        allowedLimit = 0
    }
    init(allowedLimit: Int) { // custom initializer for having different limit
        self.allowedLimit = allowedLimit
    }
}

class Person {
    var name: String
    @ageRestriction(allowedLimit: 10) var age: Int? // enforcing the wrapper (play around the limit)
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func printMe() {
        if let actualAge = self.age {
            print("\(name) is \(actualAge) years old")
        } else {
            print("\(name) has an invalid age")
        }
    }
}

var niks = Person(name: "Niks", age: 21) // passes the wrapper condition
niks.printMe()

var anshil = Person(name: "Anshil", age: 9) // fails the wrapper condition
anshil.printMe()

// Projecting a Value From a Property Wrapper
// name of the projected value is the same as the wrapped value, except it begins with a dollar sign ($)
// used to check whether the value is the wrapped value or not (usually handled by dev)
// extremely useful to limit the input val to a specific range
