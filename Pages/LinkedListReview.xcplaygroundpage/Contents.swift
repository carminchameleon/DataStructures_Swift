//: [Previous](@previous)

import Foundation

// linked List 만들기
// node


class Node<T> {
    var data: T?
    var next: Node<T>?
    
    init(data: T?, next: Node?  = nil) {
        self.data = data
        self.next = next
    }
}

var first = Node(data: 0)
var second = Node(data: 1)
var third = Node(data: 2)

first.next = second
second.next = third



class LinkedList<T> {
    private var head: Node<T>?
    
    // append - 뒤에서 넣는다.
    func append(data: T) {
        let newNode = Node(data: data)
        // 만약 아무것도 없는 상태라면, head에
        if head == nil {
            self.head = newNode
            return
        }
        
        var current = head
        while current?.next != nil { // current.next != nil 이라면 아래 구문을 실행한다.
            current = current?.next
        }
        current?.next = newNode
    
    }

    func get(index: Int) -> T? {
        var current = head
        for _ in 0..<index {
            current = current?.next
        }
        return current?.data
    }
    
    /** 우리가 넣어주고자 하는 인덱스의 직전까지 가야 한다
        직전 인덱스의 다음 인덱스를 새로운 노드로 넣어주고
        기존의 다음 값은 새로운 노드의 다음 값으로 연결해주면 된다. */
    func insert(index: Int, value: T) {
        var current = head
        for _ in 0..<index-1 {
            current = current?.next
        }
        let nextNode = current?.next
        // 현재의 자리에는 과거의 것을 넣는다.
        let newNode = Node(data: value, next: nextNode)
        // 내거의 next를 뒤에거로
        current?.next = newNode
    }
    // 어떤 값을 삭제해보자.
    //
    func remove(index: Int) {
       var current = head
        for _ in 0..<index-1 {
            current = current?.next
        }
        current?.next = current?.next?.next
    }
}


let linkedList = LinkedList<Int>()
linkedList.append(data: 1)
linkedList.append(data: 2)
linkedList.append(data: 3)
linkedList.append(data: 4)
linkedList.get(index: 0)
linkedList.get(index: 1)
linkedList.get(index: 2)
linkedList.get(index: 3)
linkedList.get(index: 4)

linkedList.insert(index: 2, value: 9)
linkedList.get(index: 0)
linkedList.get(index: 1)
linkedList.get(index: 2)
linkedList.get(index: 3)
linkedList.get(index: 4)


linkedList.remove(index: 2)
linkedList.remove(index: 2)
linkedList.get(index: 0)
linkedList.get(index: 1)
linkedList.get(index: 2)
linkedList.get(index: 3)
linkedList.get(index: 4)
