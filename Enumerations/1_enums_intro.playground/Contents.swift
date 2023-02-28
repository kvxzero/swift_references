import Foundation

// Enumerations
// defines a common type for a group of related values

print("Enumerations")
enum CompassPoint {
    case north
    case south
    case east
    case west
}
print("CompassPoints: ", terminator: "")
print("\(CompassPoint.north), \(CompassPoint.south), \(CompassPoint.west), \(CompassPoint.east)")

// The values defined in an enumeration are its enumeration cases.
// Unlike C or other languages, enums in swift doesn't have index

var directionToHead = CompassPoint.west // assigning a compass point value
print("Direction to head: \(directionToHead)")

// incase of updation of the same, shorthand is used
directionToHead = .east // updates the value to CompassPoint.east
print("Update Direction to head: \(directionToHead)")

// Matching Enumeration Values with a Switch Statement
directionToHead = .north
print("\nUsing switch to match cases")
switch directionToHead {
case .north:
    print("The northpole is the coldest")
case .south:
    print("Ay yo the hottest part")
case .west:
    print("Blue blue skies")
case .east:
    print("Watch out for da sun")
}

// Iterating over enum cases
print("\nIterating over enumerations")
enum Beverage: CaseIterable {
    // : CaseIterable after the enumeration’s name enables it to behave as a collection
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}
