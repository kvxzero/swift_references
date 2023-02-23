import Foundation

// Arrays
// Arrays are collection of elements of same data type
// In swift, array types are written as Array<Element>
// In shorthand, it is [Element]

print("Arrays")
print("Basic operations")
var intArr: [Int] = [] // Initializes an empty array
print(intArr)

intArr.append(10) // appends value 10 to the array
print(intArr)

intArr.removeAll() // clears the array
print(intArr)

intArr.append(1)
intArr.remove(at: 0) // used to remove element from one index

print("\nArray with default values")
var threeThrees: [Int] = Array(repeating: 3, count: 3) // self explanatory
print(threeThrees)

print("\nBigger array by combining two arrays")
var fourFours: [Int] = Array(repeating: 4, count: 4)
// two arrays can be combined just by using + operator
var biggerArr = threeThrees + fourFours // biggerArr type is Int array
print(biggerArr)

// just like in any other programming language, you can initialize an array by declaring them with vals
print("\nCreating Array with Array Literals")
var netflixList = ["Peaky Blinders", "Monster", "Blue lock", "Wednesday"]
print(netflixList)

// the number of vals in the array can be counted using .count
print("The netflix array has \(netflixList.count) elements")

// .isEmpty is used to check whether an array is empty
print("\nisEmpty demo")
biggerArr.removeAll()
if biggerArr.isEmpty {
    print("Bro, biggerArr... is empty?")
}

// adding elements to the array
print("\nAdding elements to the array")

// .append
biggerArr.append(69)
print(biggerArr)

// using +=
biggerArr += [420]
print(biggerArr)

biggerArr += [6, 9, 4, 2, 0]
print(biggerArr)

// Array indices
// Arrays in swift are zero indexed
print("\nArray indices")
print("\(biggerArr) has \(biggerArr[2]) on it's index = 2")
print("\(biggerArr) has \(biggerArr[6]) on it's index = 6")
print("\(biggerArr) has \(biggerArr[biggerArr.startIndex]) on it's start index")
print()

// insertion using .insert
biggerArr.insert(88, at: 7) // insert at the specified index
print(biggerArr)

biggerArr.remove(at: 6) // remove the specified index
print(biggerArr)

biggerArr[2...4] = [8, 8, 8] // basically removes the array range specified and inserts the new arr
print(biggerArr)

biggerArr[2...6] = [0] // demo of how it works, it basically slices off 2,3,4,5,6 indices and inserts [0]
print(biggerArr)

biggerArr.removeLast() // self explanatory, removes last element
print(biggerArr)

// Iterating thru an array
print("\nIterating thru an array")

// like python, can iterate thru an array with elements

for i in biggerArr {
    print(i, terminator: " ")
}
print()

// to iterate thru the array with index values, use .enumerated()
// .enumerated returns a TUPLE in (Index, Value) format

for (index, value) in biggerArr.enumerated() {
    print("index = \(index) contains \(value)")
}

// bonus
// array can contain diff types of elements if the type is explicitly mentioned as "Any"
print("\nBonus Any Type Array")
var newArr: Any = ["Hoi", 69, "Nice", 9.999]
print(newArr)

// end of arrays ^^
