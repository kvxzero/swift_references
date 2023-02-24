import Foundation

// Loops
// Loops are used to perform a task multiple times

// For-in loops
// used to iterate over a sequence

print("For-in Loops")
print("Arrays") // arrays are ordered
let array = [1, 2, 3, 4, 5]
for i in array {
    print(i)
}

print("\nSets") // sets are unordered
var sets: Set<Int> = [0, 9, 8, 7, 6]
for i in sets {
    print(i)
}

print("\nDictionaries") // key value pairs, tuples are obtained
let chars = [
    "Anemo": "Xiao",
    "Pyro": "Hutao",
    "Hydro": "Childe",
    "Electro": "Baal"
]

for (key, value) in chars {
    print("\(value) belongs to \(key) element")
}

print("\nIterating thru range") // x...y or x..<y
for i in 1...5 {
    print(i)
}

// another way to have a range is by using stride
print("\nPrinting with stride (to)")
for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}
print("\nPrinting with stride (through)")
for i in stride(from: 0, through: 10, by: 2) {
    print(i)
}

// While loops
print("\nWhile loops")
var i = 0
while (i<=5) {
    print(i)
    i+=1 // important to modify the control variable, else infinite loop :(
}

// Repeat-while loops
// this is similar to the do while loop
// will be executed ATLEAST ONCE
print("\nRepeat while loops")
repeat {
    print(i) // prints i even tho it doesn't satisfy the condition
} while(i<=5)

// end of loops
