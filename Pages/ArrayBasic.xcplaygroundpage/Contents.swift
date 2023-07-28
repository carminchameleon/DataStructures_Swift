//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
var strings: [String] = ["a", "b", "c", "d"]

// insert last
strings.append("e") // O(1)
print(strings)

// pop
strings.popLast() // O(1)
print(strings)


// insert front
strings.insert("x", at: 0) // O(n)
print(strings)
/* why ?
 we iterated everything resign new indexs
 to organized it we iterate all elements.
 -> maybe it's not the best way to put new element
 */

// insert specific space
strings.insert("alien", at: 2) // O(n)
print(strings)
/* why?
 same reason with insert front, we need to chang all indexs after insert new element
 
 */


let first = [1, 2]
let second = [1, 2]
let third = first

print(first == second)
print(first == third)

let string = "my Name is Andrei"

func convert(string: String) -> String {
    let array = string.split(separator: "").reversed()
    return array.joined(separator: "")
    
}

convert(string: string)

