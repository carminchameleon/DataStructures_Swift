//: [Previous](@previous)

import Foundation

var array1 = [0,3,4,31]
var array2 = [4,6,30]


func mergeSortedArrays(_ array1: [Int],_ array2: [Int]) -> [Int] {
    
    // array 를 합쳐?
    let newList = array1 + array2
    print(newList)
    let sorted = newList.sorted()
    return sorted
}

mergeSortedArrays(array1, array2)
