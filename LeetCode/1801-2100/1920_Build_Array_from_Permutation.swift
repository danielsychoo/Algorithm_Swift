//
//  Created by sungyeopTW on 2023/01/03.
//

// MARK: - Description

/*
 1920. Build Array from Permutation
 
 Given a zero-based permutation nums (0-indexed), build an array ans of the same length where ans[i] = nums[nums[i]] for each 0 <= i < nums.length and return it.

 A zero-based permutation nums is an array of distinct integers from 0 to nums.length - 1 (inclusive).
 
 Example 1:
 Input: nums = [0,2,1,5,3,4]
 Output: [0,1,2,4,5,3]
 Explanation: The array ans is built as follows:
 ans = [nums[nums[0]], nums[nums[1]], nums[nums[2]], nums[nums[3]], nums[nums[4]], nums[nums[5]]]
     = [nums[0], nums[2], nums[1], nums[5], nums[3], nums[4]]
     = [0,1,2,4,5,3]
 
 Example 2:
 Input: nums = [5,0,1,2,3,4]
 Output: [4,5,0,1,2,3]
 Explanation: The array ans is built as follows:
 ans = [nums[nums[0]], nums[nums[1]], nums[nums[2]], nums[nums[3]], nums[nums[4]], nums[nums[5]]]
     = [nums[5], nums[0], nums[1], nums[2], nums[3], nums[4]]
     = [4,5,0,1,2,3]
 */


// MARK: - Inputs

// example 1
// let nums = [0,2,1,5,3,4]
// let output = [0,1,2,4,5,3]

// example 2
// let nums = [5,0,1,2,3,4]
// let output = [4,5,0,1,2,3]


// MARK: - My Solution

// func buildArray(_ nums: [Int]) -> [Int] {
//
//     var result = nums
//
//     for i in 0...nums.count-1 {
//         let num = nums[nums[i]]
//         if result[i] != num { result[i] = num }
//     }
//
//     return result
// }


// MARK: - Play

// let result = buildArray(nums) == output
// print("value:", buildArray(nums))
// print("result:", result)


// MARK: - Best practice
