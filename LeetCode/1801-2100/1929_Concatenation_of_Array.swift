//
//  Created by sungyeopTW on 2023/01/04.
//

// MARK: - Description

/*
 1929. Concatenation of Array
 
 Given an integer array nums of length n, you want to create an array ans of length 2n where ans[i] == nums[i] and ans[i + n] == nums[i] for 0 <= i < n (0-indexed).

 Specifically, ans is the concatenation of two nums arrays.

 Return the array ans.
 
 Example 1:
 Input: nums = [1,2,1]
 Output: [1,2,1,1,2,1]
 Explanation: The array ans is formed as follows:
 - ans = [nums[0],nums[1],nums[2],nums[0],nums[1],nums[2]]
 - ans = [1,2,1,1,2,1]
 
 Example 2:
 Input: nums = [1,3,2,1]
 Output: [1,3,2,1,1,3,2,1]
 Explanation: The array ans is formed as follows:
 - ans = [nums[0],nums[1],nums[2],nums[3],nums[0],nums[1],nums[2],nums[3]]
 - ans = [1,3,2,1,1,3,2,1]
 */


// MARK: - Inputs

// example 1
// let nums = [1,2,1]
// let output = [1,2,1,1,2,1]

// example 2
// let nums = [1,3,2,1]
// let output = [1,3,2,1,1,3,2,1]


// MARK: - My Solution

// func getConcatenation(_ nums: [Int]) -> [Int] {
//
//     var result = nums
//     nums.forEach { result.append($0) }
//
//     return result
// }


// MARK: - Play

// let result = getConcatenation(nums) == output
// print("value:", getConcatenation(nums))
// print("result:", result)


// MARK: - Best practice
