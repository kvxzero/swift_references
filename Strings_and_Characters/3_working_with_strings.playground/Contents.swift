import Foundation

// Counting characters in a string
// .count is used to find the count of chars

print("Counting characters")
let string = "This is a test string"
print("string cons has \(string.count) characters")

// Swift uses extended grapheme clusters
// string concatenation and modification may not always affect a string’s character count.

print("\nSwift Unicode and Count")
var place = "cafe"
print("\(place) has \(place.count) characters")

// adding the acute accent to make the cafe -> café
place += "\u{301}"
print("\(place) has \(place.count) characters")

// String indices
// String.Index corresponds to the position of each character in the string
// Integers cannot be passed into String.index(), only String.index types can be passed (or in String[])

print("\nString indices")
print(place[place.startIndex]) // first character
print(place[place.index(after: place.startIndex)]) // second character

// .endIndex-1 is the final index, not the .endIndex itself
print(place[place.index(before: place.endIndex)]) // last character

// .indices will return all the available String.index values
for i in place.indices {
    print("\(place[i]) ", terminator: "")
}
print()

// Inserting and Removing
// .insert(at: ) to insert at a specified index
// .remove(before: ) to remove the character at a specified index
// .removeSubrange(range) is used to remove a range of index vals

print("\nInserting and removing")
var word = "kvxzero"
print(word)

word.insert("?", at: word.endIndex) // adds "?" to the end of the word
print(word)

word.remove(at: word.index(before: word.endIndex)) // removes the last character
print(word)

var range = word.index(word.endIndex, offsetBy: -5) ..< word.endIndex
// the above variable contains the index range for removing the word "zero" from the var word
// the working of the above range is very simple
// the left side of the ..< operator ---> -5 index from the last index
// the right side of the ..< operator ---> has the last index
// so the range becomes ---> -5, -4, -3 , -2, -1 (in python terms)
word.removeSubrange(range)
print(word)
