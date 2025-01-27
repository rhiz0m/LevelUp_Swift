//
// Functions
//

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

// - Ready Player 1 🕹
//
//   Remove the `day` parameter. Add a parameter to include today’s lunch
//   special in the greeting.


func greet(person: String, special: String) -> String {
    return "Hello \(person), today's lunch special is \(special)."
}
greet(person: "Bob", special: "Tuna with Rice")



// Omitting the prefix

func greet(_ person: String,_ day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", "Wednesday")




// Argument Labels and Parameter Names

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
    // return for one liners optional
}
greet(person: "Bill", from: "Cupertino")

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)

func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}




// - Ready Player 1 🕹
//
// Add an argument label of `to` to the `person` parameter name,
// and update the `greet` method accordingly.

func greet(to person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
    // return for one liners optional
}
greet(to: "Bill", from: "Cupertino")

// Default Parameter Values

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12

//
// Advanced: Function Types
//

// Every function has a specific type, made up of the parameter types and the return type of the function.

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

// The type of both of these functions is (Int, Int) -> Int. This can be read as:

//  “A function that has two parameters, both of type Int, and that returns a value of type Int.”

// Here’s another example, for a function with no parameters or return value:

func printHelloWorld() {
    print("hello, world")
}

// Note: The type of this function is () -> Void,
//       or “a function that has no parameters, and returns Void.”
//       Which means even through there is no return, the return type is still of type void.

// Using Function Types

// Functions can be assigned types.

var mathFunction: (Int, Int) -> Int = addTwoInts

// Functions as parameters

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

// - Ready Player 1 🕹
//
//   Write a function for above matchers ther returns true if any numbers are between 1 and 10 (inclusive).
//
//   [20, 19, 7, 12] => true because of the 7
//   [20, 19, 12]    => false

//
// Links that help
//
// - https://docs.swift.org/swift-book/LanguageGuide/Functions.html

func anyLessThankTen(list: [Int], aFunction: (Int) -> Bool) -> Bool {
    for item in list {
        if aFunction(item) {
            return true
        }
    }
    return false
}

var myList = [5, 20, 15]

func betweenOneAndTen(num: Int) -> Bool {
//  alternative (1...10).contains(num)
    num >= 1 && num <= 10
}

anyLessThankTen(list: myList, aFunction: betweenOneAndTen)

/*
  ___             _   _              _                  _
 | __|  _ _ _  __| |_(_)___ _ _     /_\  _ _ __ __ _ __| |___
 | _| || | ' \/ _|  _| / _ \ ' \   / _ \| '_/ _/ _` / _` / -_)
 |_| \_,_|_||_\__|\__|_\___/_||_| /_/ \_\_| \__\__,_\__,_\___|

 */

/*
🕹 Min

Write a function named min2 that takes two Int values, a and b, and returns the smallest one. Use _ to ignore the external parameter names for both a and b.
 
 > min(1,2)
 > 1
*/


func min2(_ a: Int, _ b: Int) -> Int {
    // Alt. a < b ? a : b
    
    var numList = [a, b]
    return numList.min()!
}

min2(15, 20)

/*
🕹 Last Digit

Write a function that takes an Int and returns it’s last digit. Name the function lastDigit. Use _ to ignore the external parameter name.

 > lastDigit(12345)                     Hint: % modulus operator
 > 5
 */


func lastDigit (_ digit: Int) -> Int {
    abs(digit % 10)
}

lastDigit(12345)

/*
🕹 First Numbers

Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1. Use _ to ignore the external parameter name.

 > first(3)
 > [1, 2, 3]
*/

func first (to_ N: Int) -> [Int] {
   Array(1...N)
}

first(to_: 7)

/*
🕹 Reverse

Write a function named reverse that takes an array of integers named numbers as a parameter. The function should return an array with the numbers from numbers in reverse order.

 > reverse([1, 2, 3])
 > [3, 2, 1]
 */

func reverse (numbers: [Int]) -> [Int] {
    numbers.reversed()
}

reverse(numbers: [1, 2, 3, 4, 5])

/*
🕹 Sum

Write a function named sum that takes an array of integers and returns their sum. Use a label variable of the word 'of' and a parameter label named numbers.

 > sum(of: [1, 2, 3])
 > 6
 */

func sum(of numbers: [Int]) -> Int {
    
    // Alt. numbers.reduce(0, +)
    numbers.reduce(0, { x, y in
            x + y
    })
}

sum(of: [1, 2, 3])
