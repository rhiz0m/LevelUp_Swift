//: [Previous](@previous)

import Foundation

//: [Previous](@previous)

import Foundation

/*
 ___        _  __ _      ___ _
/ __|_ __ _(_)/ _| |_   / __| |___ ____  _ _ _ ___ ___
\__ \ V  V / |  _|  _| | (__| / _ (_-< || | '_/ -_|_-<
|___/\_/\_/|_|_|  \__|  \___|_\___/__/\_,_|_| \___/__/
*/

// A closure is just a body of code that can be passed around and used in your code.
let closureAsCode = {
    let player1 = "Player1"
    let computer = "Computer"

    if player1 > computer {
        print("\(player1) wins!")
    } else {
        print("Game Over")
    }
}

// Which we can execute like this
closureAsCode()

// We can define them as variables...
let closureAsVariable = { print ("I am a closure") }

// ...methods
func printer(payload: String) { // Function
    print(payload) // Closure
}

// and even pass them as variables to other methods
func printIt(closure: (String) -> Void) {
    let message = "Hello old friend!"
    closure(message) // And execute
}

printIt(closure: printer) // Like this

// Closures have type

// a closure that has no parameters and return a String
var hello: () -> (String) = {
    return "Hello!"
}

hello() // Hello!

// but you don't need to include
var hello2 = {
    return "Hello!"
}

hello() // Hello!

// a closure that take one Int and return an Int
var double: (Int) -> (Int) = { x in
    return 2 * x
}

double(2) // 4

// you can pass closures in your code, for example to other variables
var alsoDouble = double

alsoDouble(3) // 6

// Closures are first class citizens in Swift (variables, functions, return types).
// - asynchronous network calls
// - as a means of passing around processing
// - also make our code easier to read and reason about

// Example - Array has a method called sort that takes a function (as a closure) and uses it to compare elements.

/// func sorted(by areInIncreasingOrder: (Element, Element) -> Bool) -> [Element]

// Instead of trying to come up with every permutation and combination of how users would want to compare,
// it defines a closure, as a type, and let's you write whatever comparison logic you want yourself.

/// func sorted(Element, Element) -> Bool) -> [Element]
/// func backward(String, String) -> Bool ->  [String]

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// We can define a function matching that signature...
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2 // define our logic (as a closure)
}

// and then pass that in and use it to sort the names in our array
let reversedNames1 = names.sorted(by: backward)

// Swift has lots of shortcuts for how to write closures more tersely (matter of style and choice).

// Closure inlined
let reversedNames2 = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// Inferring type from context
let reversedNames3 = names.sorted(by: { s1, s2 in return s1 > s2 } )

// Implicit return from single-expression
let reversedNames4 = names.sorted(by: { s1, s2 in s1 > s2 } )

// Shorthand $0 $1
let reversedNames5 = names.sorted(by: { $0 > $1 } )

// Trailing closure
let reversedNames7 = names.sorted() { $0 > $1 }

// Operator methods that match our function signature
let reversedNames6 = names.sorted(by: >)

// - Ready Player 1 🕹 ShortFirst
//
// Using the Array.sorted() method, write a closure that sorts the Array based on length of String
//
// > let shortWords = names.sorted(by: shortFirst)
// > let shortWords = names.sorted(by: { ... } )
//
// > ["Ewa", "Alex", "Chris", "Barry", "Daniella"]


func sortFirst(_ e1: String, _ e2: String) -> Bool {
    e1.count < e2.count
}

let sortedFirst = names.sorted(by: sortFirst)

let sortByLength = names.sorted(by: { s1, s2 in
    return s1.count < s2.count
})

print(sortByLength)


// - Ready Player 1 🕹 Closure inlined
//
// Inline this method using any of the methods described above.
//

let sortByLengthInlined = names.sorted() { $0.count < $1.count }
print(sortByLengthInlined)


/*
     ___ _                         _                  _
    / __| |___ ____  _ _ _ ___    /_\  _ _ __ __ _ __| |___
   | (__| / _ (_-< || | '_/ -_)  / _ \| '_/ _/ _` / _` / -_)
    \___|_\___/__/\_,_|_| \___| /_/ \_\_| \__\__,_\__,_\___|
 
*/

/*
🕹 K times

Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.

> applyKTimes(K: 3, closure: { print("I heart Swift") })

*/


/*

🕹 Div3

Use filter to create an array called multiples that contains all the multiples of 3 from a given array.

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]

> let multiples = numbers.filter { ? }                     // Hint: Modulus Operator

// [3, 6, 9, 3, 12]

*/



/*
🕹 Max

Find the largest number from numbers and then print it. Use reduce to solve this exercise.

*/



/*

🕹 Join

Join all the strings from strings into one using reduce. Add spaces in between strings. Print your result.

> var strings = ["We", "Heart", "Swift"]
> "We Heart Swift"

*/


/*

🕹 Chains

Find the sum of the squares of all the odd numbers from numbers and then print it. Use map, filter and reduce to solve this problem.

> var numbers = [1, 2, 3, 4, 5, 6]
> 25 // 1 + 9 + 25 -> 25

*/



/*

🕹 For each

Implement a function forEach(array: [Int], _ closure: Int -> ()) that takes an array of integers and a closure and runs the closure for each element of the array.

var array = [1,2,3,4]
forEach(array) {
    print($0 + 1)
}
// This will be printed:
// 2
// 3
// 4

*/



/*
🕹 Bonus: Combine arrays

Implement a function combineArrays that takes 2 arrays and a closure that combines 2 Ints into a single Int. The function combines the two arrays into a single array using the provided closure. Assume that the 2 arrays have equal length.

> var array1 = [1,2,3,4]
> var array2 = [5,5,5,3]

combineArrays(array1,array2) {
    $0 * $1
}

> [5,10,15,12]
 
*/
