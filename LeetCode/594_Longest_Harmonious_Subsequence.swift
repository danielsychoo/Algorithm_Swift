//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/08/04.
//

// MARK: - Description

/*
 594. Longest Harmonious Subsequence
 
 We define a harmonious array as an array where the difference between its maximum value and its minimum value is exactly 1.

 Given an integer array nums, return the length of its longest harmonious subsequence among all its possible subsequences.

 A subsequence of array is a sequence that can be derived from the array by deleting some or no elements without changing the order of the remaining elements.
 
 Example 1:
 Input: nums = [1,3,2,2,5,2,3,7]
 Output: 5
 Explanation: The longest harmonious subsequence is [3,2,2,2,3].
 
 Example 2:
 Input: nums = [1,2,3,4]
 Output: 2
 
 Example 3:
 Input: nums = [1,1,1,1]
 Output: 0

 */


// MARK: - Inputs

// example 1
// let nums = [1,3,2,2,5,2,3,7]
// let output = 5

// example 2
// let nums = [1,2,3,4]
// let output = 2

// example 3
// let nums = [1,1,1,1]
// let output = 0


// MARK: - My Solution

/*
 */

// func findLHS(_ nums: [Int]) -> Int {
//     var dict: [Int:Int] = [:]
//     nums.forEach {
//         if dict[$0] == nil { dict[$0] = 1 }
//         else { dict[$0]! += 1 }
//     }
//
//     var count = 0
//     var max = 0
//     dict.keys.forEach {
//         if dict[$0 + 1] != nil {
//             count = dict[$0]! + dict[$0 + 1]!
//
//             if count > max { max = count }
//         }
//     }
//
//     return max
// }


// MARK: - Play

// let result = findLHS(nums) == output
// print("result :", result)


// MARK: - Best practice
