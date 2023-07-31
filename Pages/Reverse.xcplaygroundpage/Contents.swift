////: [Previous](@previous)
//
import Foundation

// mission : 문자열 reverse하기
var greeting = "Hello, playground"

func firstWay(str: String) -> String {
    var count = str.count
    // 1. 빈배열을 만들고
    var list: [Character] = []
    // 2. 뒤에서부터 접근한다.
    while count > 0 {
        count = count - 1
        let index = str.index(str.startIndex, offsetBy: count)
        list.append(str[index])
    }
    //3. 합쳐서 문자열로 만든다.
    return String(list)
}

firstWay(str: greeting)

func secondWay(str: String) -> String {
    return String(str.reversed())
}
secondWay(str: greeting)

func thirdWay(str: String) -> String {
    let result =  str.map{ String($0) }.reversed().reduce("") { result, character in
        return result + character
    }
    return result
}
let test = ""
thirdWay(str: test)


