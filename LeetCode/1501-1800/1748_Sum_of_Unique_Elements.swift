//
//  Created by sungyeopTW on 2023/01/04.
//

// MARK: - Description

/*
 1748. Sum of Unique Elements
 
 You are given an integer array nums.
 The unique elements of an array are the elements that appear exactly once in the array.

 Return the sum of all the unique elements of nums.
 
 Example 1:
 Input: nums = [1,2,3,2]
 Output: 4
 Explanation: The unique elements are [1,3], and the sum is 4.
 
 Example 2:
 Input: nums = [1,1,1,1,1]
 Output: 0
 Explanation: There are no unique elements, and the sum is 0.
 
 Example 3:
 Input: nums = [1,2,3,4,5]
 Output: 15
 Explanation: The unique elements are [1,2,3,4,5], and the sum is 15.
 */


// MARK: - Inputs

// example 1
// let nums = [1,2,3,2]
// let output = 4

// example 2
// let nums = [1,1,1,1,1]
// let output = 0

// example 3
// let nums = [1,2,3,4,5]
// let output = 15

// example 4
// let nums = [10,6,9,6,9,6,8,7]
// let output = 25


// MARK: - My Solution

// func sumOfUnique(_ nums: [Int]) -> Int {
//
//     var dict: [Int: Int] = [:]
//     nums.forEach {
//         if let _ = dict[$0] { dict[$0]! += 1 }
//         else { dict[$0] = 1 }
//     }
//
//     let list = dict.filter({ $0.value == 1 }).keys
//
//     return list.reduce(0) { $0 + $1 }
// }


// MARK: - Play

// let result = sumOfUnique(nums) == output
// print("value:", sumOfUnique(nums))
// print("result:", result)


// MARK: - Best practice
