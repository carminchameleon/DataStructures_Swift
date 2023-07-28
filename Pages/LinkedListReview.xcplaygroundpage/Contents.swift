//: [Previous](@previous)

import Foundation

// Linked List
// 배열을 만드는 방법
// 1. static array 2. dynamic array
// 1. 모든 것을 다 같이 넣는 방법 - easy and fast approach data,

// node
// linked list

class Node<T> {
    var data: T?
    var next: Node?
    
    init(data: T, next: Node? = nil) {
        self.data = data
        self.next = next
    }
    
}

let first = Node(data: 1)
let second = Node(data: 2)
let third = Node(data: 3)

first.next = second
second.next = third


// head
class LinkedList<T> {
    var head: Node<T>?
    
    // push
    func push(data: T) {
        let newNode = Node(data: data)
        
        //   head가 비어있을 경우 그 값이 head가 된다.
        if head == nil {
            head = newNode
            return
        }
        
        // 마지막에 넣어야 하는 거니까 마지막 값을 찾아야 한다.
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = newNode
    }
}
//
//
//Your goal is to write a Swift playground that:
//
//Creates a constant holding any temperature in Celsius.
//Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
//Prints the result for the user, showing both the Celsius and Fahrenheit values.

let celsius: Double = 24.00
//화씨로 변경
let fahrenheit = (celsius * 9 / 5) + 32
print("Cellcius \(celsius), Fahrenheit \(fahrenheit)")


