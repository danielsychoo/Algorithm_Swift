//
//  Created by sungyeopTW on 2023/01/04.
//

// MARK: - Description

/*
 1512. Number of Good Pairs
 
 Given an array of integers nums, return the number of good pairs.
 A pair (i, j) is called good if nums[i] == nums[j] and i < j.
 
 Example 1:
 Input: nums = [1,2,3,1,1,3]
 Output: 4
 Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.

 Example 2:
 Input: nums = [1,1,1,1]
 Output: 6
 Explanation: Each pair in the array are good.
 
 Example 3:
 Input: nums = [1,2,3]
 Output: 0
 */


// MARK: - Inputs

// example 1
// let nums = [1,2,3,1,1,3]
// let output = 4

// example 2
// let nums = [1,1,1,1]
// let output = 6

// example 3
// let nums = [1,2,3]
// let output = 0


// MARK: - My Solution

// func numIdenticalPairs(_ nums: [Int]) -> Int {
//
//     var result = 0
//
//     for i in 0...nums.count-2 {
//         let base = nums[i]
//
//         for n in i+1...nums.count-1 {
//             if base == nums[n] {
//                 result += 1
//             }
//         }
//     }
//
//     return result
// }


// MARK: - Play

// let result = numIdenticalPairs(nums) == output
// print("value:", numIdenticalPairs(nums))
// print("result:", result)


// MARK: - Best practice

