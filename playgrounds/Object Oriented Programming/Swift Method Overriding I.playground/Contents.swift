// SwiftyCamp iOS Development Bootcamp
// This our first day code exercises
// Thank you.

// Swift Method Overriding

// When a subclass inherits from a superclass, it also inherits its methods; however, it can also override the superclass methods (as well as declare and implement new ones). Consider the following Sports class:

class Sports{
    func getName() -> String {
        return "Generic Sports"
    }
    
    func getNumberOfTeamMembers() {
        print("Each team has n players in \(getName())")
    }
}

// Next, we create a Soccer class that inherits from the Sports class. We can override the getName method and return a different, subclass-specific string:

class Soccer: Sports{
    override func getName() -> String {
        return "Soccer Class"
    }
    
    override func getNumberOfTeamMembers() {
        print("Each team has 11 players in \(getName())")

    }
}

// Note: When overriding a method, you should precede it with the override annotation. The parameter(s) and return type of an overridden method must be exactly the same as those of the method inherited from the supertype.

// Task
// Complete the code in your editor by writing an overridden getNumberOfTeamMembers method that prints the same statement as the superclass' getNumberOfTeamMembers method, except that it replaces n with 11 (the number of players on a Soccer team).

