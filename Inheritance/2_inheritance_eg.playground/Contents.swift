import Foundation

print("Inheritance")
class Vehicle { // base class
    var currentSpeed = 0.0
    init(currentSpeed: Double) {
        self.currentSpeed = currentSpeed
    }
    var description: String {
        return "speeding at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("......~")
        // do nothing
    }
}

class Ferrari: Vehicle { // child class 1
    var gear: Int = 0
    
    override var description: String { // overriding base class property
            return super.description + " in gear \(gear)"
    }
    override init(currentSpeed: Double) { // overriding base class init
        super.init(currentSpeed: currentSpeed)
    }
    init(currentSpeed: Double, gear: Int) {
        super.init(currentSpeed: currentSpeed) // calling base class init
        self.gear = gear
    }
    override func makeNoise() { // overriding noise function
         print("vrrrrrvrvrvrvrooom~!")
    }
}

class Lambo: Vehicle { // child class 2
    var gear: Int = 0
    
    override var description: String { // overriding base class property
            return super.description + " in gear \(gear)"
    }
    override init(currentSpeed: Double) { // overriding base class init
        super.init(currentSpeed: currentSpeed)
    }
    init(currentSpeed: Double, gear: Int) { // new init class
        super.init(currentSpeed: currentSpeed) // calling base class init
        self.gear = gear
    }
    override func makeNoise() { // overriding noise function
         print("skkkkrrrooooooooom~!")
    }
}

var vehicle = Vehicle(currentSpeed: 0)
var ferrari = Ferrari(currentSpeed: 70, gear: 3)
var lambo = Lambo(currentSpeed: 90, gear: 4)

print("\nVehicle: \(vehicle.description)")
vehicle.makeNoise()

print("\nFerrari: \(ferrari.description)")
ferrari.makeNoise()

print("\nLamborghini: \(lambo.description)")
lambo.makeNoise()
