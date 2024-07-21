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

var myList = [10, 20, 15]

func betweenOneAndTen(num: Int) -> Bool {
//  alternative (1...10).contains(num)
    num >= 1 && num <= 10
}

anyLessThankTen(list: myList, aFunction: betweenOneAndTen(num:))
