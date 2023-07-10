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

 // 2. Sort + TwoPointer
    func checkTwoSum(_ nums: [Int],_ target: Int) -> Bool {
        let sortedNums = nums.sorted()
        print(sortedNums)
        var left = 0
        var right = sortedNums.count - 1
        
        while left < right {
            if sortedNums[left] + sortedNums[right] == target {
                return true
                
            } else if sortedNums[left] + sortedNums[right] < target {
                left = left + 1
            } else if sortedNums[left] + sortedNums[right] > target {
                right = right - 1
            }
        }
        return false
    }
}

let test = Solution()
//print(test.twoSum(input, target))
print(test.checkTwoSum(input, target))

// 2.

