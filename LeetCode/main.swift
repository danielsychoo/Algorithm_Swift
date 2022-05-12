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
var nums = [2, 7, 11, 15]
var target = 9
let output = [0, 1]

// example 2
// var nums = [3, 2, 4]
// var target = 6
// let output = [1, 2]

// example 3
// var nums = [3, 3]
// var target = 6
// let output = [0, 1]


// MARK: - Solution

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var firstIdx = 0
    
    func test() -> [Int] {
        for i in firstIdx+1..<nums.count {
            if nums[firstIdx] + nums[i] == target {
                return [firstIdx, i]
            }
        }
        
        firstIdx += 1
        return test()
    }
    
    return test()
}


// MARK: - Play

let result = twoSum(nums, target) == output
print(result)


// MARK: - Best practice

