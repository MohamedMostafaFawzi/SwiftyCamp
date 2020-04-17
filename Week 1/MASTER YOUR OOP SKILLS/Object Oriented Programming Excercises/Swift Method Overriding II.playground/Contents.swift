// SwiftyCamp iOS Development Bootcamp
// This our first day code exercises
// Thank you.

// Swift Method Overriding 2

// When a method in a subclass overrides a method in superclass, it is still possible to call the overridden method using super keyword. If you write super.func() to call the function func(), it will call the method that was defined in the superclass.

// Task
// Imagine and write the code that could make this output.

class Motorcycle {
    func motorcycleHello() -> String {
        print("Hello I am a motorcycle, I am a cycle with an engine.")
        return "Hello I am a motorcycle, I am a cycle with an engine."
    }
}

class Cycle: Motorcycle {
    override func motorcycleHello() -> String {
        return super.motorcycleHello()
    }
}

let electricBike = Cycle()


electricBike.motorcycleHello()




// Hello I am a motorcycle, I am a cycle with an engine.
