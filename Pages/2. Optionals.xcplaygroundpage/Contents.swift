//: [Previous](@previous)

import Foundation

/*
    ___       _   _               _     _                  _
   / _ \ _ __| |_(_)___ _ _  __ _| |   /_\  _ _ __ __ _ __| |___
  | (_) | '_ \  _| / _ \ ' \/ _` | |  / _ \| '_/ _/ _` / _` / -_)
   \___/| .__/\__|_\___/_||_\__,_|_| /_/ \_\_| \__\__,_\__,_\___|
        |_|

 */

/*
🕹 Unwrap with if-let

Unwrap the following Optional using the if let statement
*/

let possibleFirstName: String? = "Sam"

if let firstName = possibleFirstName {
    print("the name is: \(firstName)")
} else {
    print("There are no name aviable")
}

/*
🕹 Unwrap with guard

Unwrap the following Optional using the guard statement
*/

enum MyError: Error {
    case invalidUsername
}




// let lastName: String? = "Flynn"
let lastname: String? = nil

func tryName(name: String?) {
    guard let lastName = name else {
        print("No name aviable: \(MyError.invalidUsername)")
        return
    }
    print("The name is \(lastName)")
}

tryName(name: lastname)

do {
    guard let lName = lastname else {
        throw MyError.invalidUsername
    }
    print(lName)
} catch {
    print("An error occurred: \(error)")
}



