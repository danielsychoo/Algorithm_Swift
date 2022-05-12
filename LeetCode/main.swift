//
//  Created by sungyeopTW on 2022/05/12.
//


// MARK: - Description

/*
 1. Two Sum
 
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
 
 Example 1:
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 Example 2:
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Example3:
 Input: nums = [3,3], target = 6
 Output: [0,1]
 */


// MARK: - Inputs

// example 1
// var nums = [2, 7, 11, 15]
// var target = 9
// let output = [0, 1]

// example 2
var nums = [3, 2, 4]
var target = 6
let output = [1, 2]

// example 3
// var nums = [3, 3]
// var target = 6
// let output = [0, 1]


// MARK: - My Solution

// func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//     var firstIdx = 0
//
//     func test() -> [Int] {
//         for i in firstIdx+1..<nums.count {
//             if nums[firstIdx] + nums[i] == target {
//                 return [firstIdx, i]
//             }
//         }
//
//         firstIdx += 1
//         return test()
//     }
//
//     return test()
// }


// MARK: - Play

let result = twoSum(nums, target) == output
print("result :", result)



// MARK: - Best practice

// - Complexity:
//   - time: O(n), where n is the length of the nums.
//   - space: O(n), where n is the length of the nums.

/*
 - 주석[1] (enumerated -- https://developer.apple.com/documentation/swift/array/1687832-enumerated)
 array에 enumerated 함수를 사용하면 (index, value)의 tuple형식으로 구성된 리스트가 반환된다.
    따라서 로직에서는 nums내의 값과 그 값의 index를 가져오기 위해 사용되었다.
    이때, for문에서 해당 tuple내의 element를 직접 접근할 수 있다.
 */

/*
 - 주석[2] (dictionary type -- https://developer.apple.com/documentation/swift/dictionary)
 optionalBinding 이므로 조건이 만족해야만 결과가 반환되고, 만족하지 않으면 dict에 [num: i] 의 형식으로 데이터가 들어간다.
    만일 반환없이 모두 dict에 들어간다면 Example2를 기준으로 [3: 0, 2: 1, 4: 2] 가 될 것이다.
 
 이 상황에서 현재의 num과 다른 num을 더했을 때 target이 되는 값의 index들을 찾아야 하므로,
    dict[target - num] 이 존재하면 해당 조건이 만족하여 (optionalBinding도 만족) 반환되는 방식이다.
 */

    
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()

    for (i, num) in nums.enumerated() { /// 주석[1]

        if let j = dict[target - num] { return [j, i] } /// 주석[2]
        dict[num] = i

    }

    return []
}
