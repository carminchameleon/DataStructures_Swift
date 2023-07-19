//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


class Node<T> {
    var data: T? // 어떤 타입이든 들어 올 수 있게 해야 하므로
    var next: Node? // Node가 들어갈 것이므로

    init(data: T?, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

var first = Node(data: 1)
var second = Node(data: 2)
var third = Node(data: 3)
first.next = second
second.next = third

class LinkedList<T> {
    private var head: Node<T>?
  
    // 다음 요소 넣기
    // 첫번째 요소일 경우에 head에 노드를 넣는다.
    // 아닐 경우 head로부터 시작, next값이 없을 때 까지 옮긴다.
    func append(data: T) {
        var newNode = Node(data: data)
        // 첫번째 요소라면
        if head == nil {
            self.head = newNode
            return
        }
        // 마지막 요소까지 찾아가야함
        var current = head // 우선 첫번째부터 시작
        while current?.next != nil { // next가 nil일때까지 ( 마지막 요소일 때 까지)
            current = current?.next
        }
        current?.next = newNode
    }
    
}
