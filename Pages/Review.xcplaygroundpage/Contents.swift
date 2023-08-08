//: [Previous](@previous)

import Foundation


// data, next 가 필요함
class Node<T> {
    var data: T?
    var next: Node?
    
    init(data: T?, next: Node? = nil){
        self.data = data
        self.next = next
    }
}
//
//let first = Node(data: 1)
//let second = Node(data: 2)
//let third = Node(data: 3)
//
//first.next = second
//second.next = third


class LinkedList<T> {
    var head: Node<T>?
    
    // append == insert back == push (시간복잡도 n)
    func append(data: T?) {
        let newNode = Node(data: data)
        // if it is first value of linked list
        if head == nil {
            self.head = newNode
            return
        }
        
        var current = self.head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = newNode
    }
    
    // access - to know linked list's element 시간복잡도 n
    func access(index: Int) -> T? {
        var current = head
        for _ in 0..<index {
            current = current?.next
        }
        return current?.data
    }
    // index의 자리에 data를 넣어야함 시간복잡도 n
    func insert(index: Int, data: T?) {
        var current = head
        for _ in 0..<index-1 {
            current = current?.next
        }
        
        let newNode = Node(data: data, next: current?.next)
        current?.next = newNode
    }
    // remove specific index one 시간복잡도 n
    func remove(index: Int) {
        var current = head
        for _ in 0..<index-1 {
            current = current?.next
        }
        current?.next = current?.next?.next
    }
    
    // delete last one - 시간복잡도 n
    func pop() {
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.data = nil
    }
}
//
//var list = LinkedList<Int>()
//list.append(data: 0)
//list.append(data: 1)
//list.append(data: 2)
//
//list.access(index: 0)
//list.access(index: 1)
//list.access(index: 2)
//
//list.insert(index: 2, data: 10)
//
//list.access(index: 0)
//list.access(index: 1)
//list.access(index: 2)
//list.access(index: 3)
//
//list.remove(index: 2)
//
//list.access(index: 0)
//list.access(index: 1)
//list.access(index: 2)
//list.access(index: 3)
//
//list.pop()
//
//list.access(index: 0)
//list.access(index: 1)
//list.access(index: 2)
//list.access(index: 3)



// tail 있는 링크드 리스트
class LinkedListWithTail<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    // insert Back - 시간 복잡도 1
    func append(data: T) {
        let newNode = Node(data: data)
        
        if head == nil {
            head = newNode
            tail = newNode
        }
        
        self.tail?.next = newNode
        self.tail = newNode
    }
    
    
    // 시간 복잡도 = n
    func access(index: Int) -> T? {
        var current = self.head
        
        for _ in 0..<index {
            current = current?.next
        }
        return current?.data
    }
    
    // 모르겠음
    func pop() {
        
    }
}

var newList = LinkedListWithTail<Int>()

newList.append(data: 0)
newList.append(data: 1)
newList.append(data: 2)

newList.access(index: 0)
newList.access(index: 1)
newList.access(index: 2)

