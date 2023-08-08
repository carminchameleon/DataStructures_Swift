
import Foundation

class Node {
    var homepage: String
    var prev: Node?
    var next: Node?
    
    init(homepage: String, prev: Node? = nil, next: Node? = nil) {
        self.homepage = homepage
        self.prev = prev
        self.next = next
    }
}

let node = Node(homepage: "google")

class BrowserHitory {
    var head: Node?
    var current: Node?
    
    init(_ url: String) {
        let newPage = Node(homepage: url)
        self.head = newPage
        self.current = newPage
    }
        
    func visit(_ url: String) {
        let newPage = Node(homepage: url, prev: self.current)
        self.current?.next = newPage
        self.current = newPage
    }
    
    func back(steps: Int) -> String? {
        var currentStep = steps
        while currentStep != 0, current?.prev != nil {
            self.current = self.current?.prev
            currentStep -= 1
        }
        return current?.homepage
    }

    func forward(steps: Int) -> String? {
        var currentStep = steps
        while currentStep != 0, current?.next != nil {
            self.current = self.current?.next
            currentStep -= 1
        }
        return current?.homepage
    }
    
}

let browserHistory = BrowserHitory("leetcode.com")
browserHistory.visit("google.com")
browserHistory.visit("facebook.com")
browserHistory.visit("youtube.com")
browserHistory.back(steps: 1) // facebook.com
browserHistory.back(steps: 1) // google.com
browserHistory.forward(steps: 1) // facebook.com
browserHistory.visit("linkedin.com")
browserHistory.forward(steps: 2) // linkedin.com
browserHistory.back(steps: 2) // google.com
browserHistory.back(steps: 7) // leetcode.com
