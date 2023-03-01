import Foundation

// Type Subscripts
// basically value types' subscripts
// uses static keyword
// like a static method

print("Type Subscripts")
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    // by default, enums subscripts will only output "rawValue"
    // now we are defining a subscript to return the value itself
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

print("The fourth planet is \(Planet[4])")
print("The fifth planet is \(Planet[5])")
print("The first planet is \(Planet[1])")
