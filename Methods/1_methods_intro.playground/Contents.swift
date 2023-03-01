import Foundation

// Methods
// functions inside a class, structs or enums are called methods

print("Methods")
class Counter {
    var count = 0
    func increment() { // methods
        print("Count incremented by 1...")
        count += 1
    }
    func increment(by amount: Int) { // methods
        print("Count incremented by \(amount)...")
        count += amount
    }
    func reset() { // methods
        count = 0
    }
    func printMe() { // methods
        print("Count value is: \(count)")
    }
}

var countMaker = Counter()
countMaker.increment()
countMaker.increment(by: 10)
countMaker.increment(by: 2)
countMaker.printMe()

// Self property
// already widely used in other examples too
// refer to the current instance within its own instance methods

// Modifying Value Types from Within Instance Methods
// to modify the properties of your structure or enumeration
// the mutating keyword before the func keyword

print("\nModifying Value Types from Within Instance Methods")
struct StructCounter {
    var count = 0
    mutating func increment() { // methods
        print("Count incremented by 1...")
        count += 1
    }
    mutating func increment(by amount: Int) { // methods
        print("Count incremented by \(amount)...")
        count += amount
    }
    mutating func reset() { // methods
        count = 0
    }
    func printMe() { // methods
        print("Count value is: \(count)")
    }
    mutating func assign(anotherCounter: StructCounter) {
        self = anotherCounter
    }
}

var structureCounter = StructCounter()
structureCounter.increment()
structureCounter.increment(by: 50)
structureCounter.increment(by: 18)
structureCounter.printMe()

// Assigning to self within a Mutating Method
// can assign an entirely new instance to the implicit self property

print("\nAssigning to self within a mutating method")
var newStructureCounter = StructCounter()
newStructureCounter.increment()
newStructureCounter.increment(by: 33)
newStructureCounter.printMe()
print("changing the counter...")
newStructureCounter.assign(anotherCounter: structureCounter)
newStructureCounter.printMe()
