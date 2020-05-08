import UIKit


//MASTER YOUR SWIFT KNOWLEDGE

// 1. Write a function that accept two integer values and to test which value is nearest to the value 10, or return 0 if both integers have same distance from 10.

func whoCloseToTen(x: Int,y: Int) -> Int {
    // abs: returns the absolute value of the given number.
    if abs(10 - y) > abs(10 - x) {
        print("\(x) is the nearest to 10")
        return x
    } else if abs(10 - y) < abs(10 - x) {
        print("\(y) is the nearest to 10")
        return y
    }
    print("\(x) and \(y) have the same distance to 10")
        return 0
}

whoCloseToTen(x: 15, y: 12)


// 2. Write a function to create a string taking characters at indexes 0, 2, 4, 6, 8... from a given string.

func skipLetter(word:String) -> String {
    var newWord = word
    var count = 1
    while count < (newWord.count) {
        newWord.remove(at: newWord.index(newWord.startIndex, offsetBy: count))
        count += 1
    }
    print(newWord)
    return newWord
}

skipLetter(word: "Canaria")


// 3. Write a function to convert the last three characters in upper case. If the string has less than 3 chars, lowercase whatever is there.

func lastThreeUpper(word: String) -> String {
    if word.count < 3
    {
        return word.lowercased()
    }
    else
    {
        var preNewWord = word
        var newWord: String = ""
        let lastThree = preNewWord.suffix(3)
        preNewWord.removeLast(3)
        _ = String(lastThree).uppercased() // uppercased last three
        newWord.append(contentsOf: preNewWord)
        newWord.append(String(lastThree).uppercased())
        print(newWord)
        return newWord
    }
}

lastThreeUpper(word: "Canarialtd")


// 4. Write a function to test if the number of 1's is greater than the number of 3's of a given array of integers.

func onesOrThrees(arrayOfIntegers: [Int]) -> Bool {
    var ones = 0
    var threes = 0
    
    for number in 0...(arrayOfIntegers.count)-1 {
        if arrayOfIntegers[number] == 1 {
            ones += 1
        }
        else if arrayOfIntegers[number] == 3 {
            threes += 1
        }
    }
    if ones > threes {
        print("the number of 1's is greater than the number of 3's")
    }else if threes > ones {
        print("the number of 3's is greater than the number of 1's")
    }else {
        print("the number of 3's is equal to the number of 1's")

    }
    return ones > threes
}

onesOrThrees(arrayOfIntegers: [1,1,1,3,3])


// 5. Write a function that Determine whether a given integer number is prime.

func isPrime(number: Int) -> Bool {
    // A prime number is a natural number greater than 1 that cannot be formed by multiplying two smaller natural numbers.
    // Prime numbers between 1 and 100: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, and 97.
    if number <= 1 {
        print("\(number) is not a prime number")
        return false
    }
    if number <= 3 {
        print("\(number) is a prime number")
        return true
    }
    var i = 2
    while i*i <= number {
        if number % i == 0 {
            print("\(number) is not a prime number")
            return false
        }
        i = i + 1
    }
    print("\(number) is a prime number")
    return true
}
isPrime(number: 4)


// 6. Write a function that Determine the greatest common divisor of two positive integer numbers.

func greatestCommonDivisor(x:Int, y:Int) -> Int {
    var a: Int = 0
    var b: Int = max(x, y)
    var r: Int = min(x, y)

    while r != 0 {
        a = b
        b = r
        r = a % b
    }
    print("the greatest common divisor is \(b)")
    return b
}

// Source: https://github.com/raywenderlich/swift-algorithm-club/tree/master/GCD

greatestCommonDivisor(x: 13, y: 9)



