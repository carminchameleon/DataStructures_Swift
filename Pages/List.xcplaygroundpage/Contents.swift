import UIKit

let input:[Int] = [4,1,9,7,5,3,16]
let target:Int = 111
// output(2,4)

// 1. intuitive solution O(n^2)
// n을 두번 반복하기 때문에 n * n = n^2
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
    // (nlogn)
    func twoSumWithTwoPoint(_ nums: [Int],_ target: Int) -> Bool {
        // 1. 정렬 시간 복잡도 -> O(Nlogn)
        let sortedList = nums.sorted()
        var left = 0
        var right = sortedList.count - 1
        // 시간 복잡도 -> O(n) * O(1) = O(n)
        while left < right { // 시간 복잡도 n
            let leftNum = sortedList[left]  // 시간 복잡도 O(1) why? 랜덤 엑세스 가능하기 때문에 (인덱스로 바로 접근하는 것이기 때문에)
            let rightNum = sortedList[right] // 시간 복잡도 O(1)
            if leftNum + rightNum == target {
                return true
            } else if leftNum + rightNum > target {
                right = right - 1
            } else {
                left = left + 1
            }
        }
        // 시간 복잡도 O(nlogn) 그 다음에 O(n) 순차적으로 되기 때문에
        // 전체 복잡도는 더 큰 값인 O(nlogn)이 된다.
        return false
    }
    
    // O
}

let test = Solution()
//print(test.twoSum(input, target))
print(test.twoSumWithTwoPoint(input, target))


