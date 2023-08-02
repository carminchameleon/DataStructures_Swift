//: [Previous](@previous)

import Foundation

class Node<T> {
    var data: T?
    var next: Node?
    
    init(data: T?, next : Node<T>? = nil) {
        self.data = data
        self.next = next
    }
}

var first = Node(data: 1)
var second = Node(data: 2)
var third = Node(data: 3)

first.next = second
first.next = third


class TailLinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    // insertBack with tail
    // tail은 맨 마지막 데이터를 가리키고 있다.
    func append(data: T) {
        let newNode = Node(data: data)
        if head == nil {
            self.head = newNode
            self.tail = newNode
        }
        
        self.tail?.next = newNode
        self.tail = newNode
    }

    func get(index: Int) -> T? {
        var current = head
        
        for _ in 0..<index {
            current = current?.next
        }
        return current?.data
    }
    
}




let linkedList = TailLinkedList<Int>()
linkedList.append(data: 1)
linkedList.append(data: 2)
linkedList.append(data: 3)
linkedList.append(data: 4)
linkedList.get(index: 0)
linkedList.get(index: 1)
linkedList.get(index: 2)
linkedList.get(index: 3)
linkedList.get(index: 4)
