import UIKit

let input:[Int] = [4,1,9,7,5,3,16]
let target:Int = 14
// output(2,4)

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
}

let test = Solution()
print(test.twoSum(input, target))
