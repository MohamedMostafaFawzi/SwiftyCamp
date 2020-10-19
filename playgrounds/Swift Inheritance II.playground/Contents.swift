// SwiftyCamp iOS Development Bootcamp
// This our first day code exercises
// Thank you.

// Swift Inheritance II

// Write the following code in your editor below:

// 1 - A class named Arithmetic with a method named add that takes 2 integers as parameters and returns an integer denoting their sum.

private class Arithmetic {
    func add(x:Int , y:Int) -> Int {
        print(x + y)
        return x + y
    }
}

// 2 - A class named Adder that inherits from a superclass named Arithmetic.

private class Adder: Arithmetic {
    override func add(x: Int, y: Int) -> Int {
        print(x + y)
        return x + y
    }
}

// Your classes should not be public.
// Your add method must return the sum of its parameters.


