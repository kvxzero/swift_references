import Foundation

// Sets
// Set stores data in an unordered fashion
// Cannot contain duplicates
// A type must be hashable in order to be stored in a set
// All of Swift’s basic types (such as String, Int, Double, and Bool) are hashable by default

print("Set operations")
var sets = Set<Int>() // set that stores values of type integers
sets.insert(10) // inserting 10 to the set
print(sets)

sets.insert(20)
sets.insert(30)
sets.insert(10) // trying to add a duplicate value

print(sets) // no duplicates, no specific order too

sets = [] // empties the set but still of type Int
sets.removeAll() // another way to empty the set

print("\nCreating a Set with Array literal")
var anotherSet: Set<Int> = [1, 2, 3, 4, 4]
print(anotherSet)

// sets types should be explicitly declared
// but, set can infer data type if initialized with an array that contains only one type
// so, it can be shorthanded

var newSet: Set = [6, 4, 3, 2]
print(newSet)

// Accessing and modifying a set
print("\nAccessing and Modifying")

// .count to count the num of vals in the set
print("\(newSet) has \(newSet.count) values")

// .isEmpty to check whether the set is empty
print("\(newSet) is empty? \(newSet.isEmpty)")
newSet.removeAll()
print("\(newSet) is empty? \(newSet.isEmpty)")

// .insert to add elements into the set
newSet.insert(10)
print("\(newSet) is empty? \(newSet.isEmpty)")

// .remove to remove an element from the set
// .remove function also returns true if the value exists in the set

if let removedInt = newSet.remove(10) {
    print("No, you are not a \(removedInt)")
} else {
    print("I knew it!")
}

// .contains returns true if the set has a value and false if not
newSet.insert(60)
if newSet.contains(60) {
    print("\(newSet) contains 60")
}

// Iterating over a set
print("\nIterating over a set")
print(anotherSet)

// just like python iteration, for element in set
for i in anotherSet {
    print(i, terminator: " ")
}
print("")

// sets doesn't have a specified order, so you can use .sorted()
for i in anotherSet.sorted() {
    print(i, terminator: " ")
}
print("")

// sets can also be iterated through like an array with enumerated() function
// but it will be random and not recommended
print("\nEnumerated() fn iteration")
for (index, value) in anotherSet.enumerated() {
    print(index, value)
}

// Fundamental Set Operations
print("\nFundamental Set Operations")
var a: Set = [1, 2, 3, 4 ,5]
var b: Set = [4, 5, 6, 7, 8]
print("A intersection B = \(a.intersection(b).sorted())") // Intersection
print("A union B = \(a.union(b).sorted())") // Union
print("A symmetric difference B = \(a.symmetricDifference(b).sorted())") // Symmetric difference
print("A subtraction B = \(a.subtracting(b).sorted())") // Subtraction

// Set Membership and Equality
print("\nSet Membership and Equality")
var x: Set = [1, 2, 3]
var y: Set = [1, 2, 3]

print("\(x.sorted()) is equal to \(y.sorted()) ? \(x == y)")
// returns true if both sets contains same values

y.insert(4)
y.insert(5)
var z: Set = [0, -1, -2]
print("\(x.sorted()) is a subset of \(y.sorted()) ? \(x.isSubset(of: y))")
// returns true if y contains all elements of x but can also contain more

print("\(y.sorted()) is a superset of \(x.sorted()) ? \(y.isSuperset(of: x))")
// returns true if y is a superset of x

print("\(z.sorted()) is disjoint of \(y.sorted()) ? \(z.isDisjoint(with: y))")
// returns true if z and y has no values in common
