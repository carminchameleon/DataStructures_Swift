import UIKit

let input:[Int] = [4,1,9,7,5,3,16]
let target:Int = 111
// output(2,4)

// 1. intuitive solution O(n^2)
class Solution {
    func twoSum(_ nums: [Int],_ target: Int) -> [Int] {
        
        for i in 0..<(nums.count - 1) {
            for j in (i + 1)..<(nums.count - 1) {
                if(nums[i] + nums[j] == target) {
                    return [i, j]
                }
            }
        }
        return []
    }
    
    // 더해서 target의 값이 될 경우에는 true를 리턴할 때
    func twoSumWithTwoPoint(_ nums: [Int],_ target: Int) -> Bool {
        // 정렬 -> O(Nlogn)
        let sortedList = nums.sorted()
        var left = 0
        var right = sortedList.count - 1
        
        while left < right {
            let leftNum = sortedList[left]
            let rightNum = sortedList[right]
            if leftNum + rightNum == target {
                return true
            } else if leftNum + rightNum > target {
                right = right - 1
            } else {
                left = left + 1
            }
        }
        return false
    }
}

let test = Solution()
//print(test.twoSum(input, target))
print(test.twoSumWithTwoPoint(input, target))


