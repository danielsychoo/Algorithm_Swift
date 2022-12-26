//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/05.
//

// MARK: - Description

/*
 1822. Sign of the Product of an Array
 
 There is a function signFunc(x) that returns:

 *  1 if x is positive.
 * -1 if x is negative.
 * 0 if x is equal to 0.
 You are given an integer array nums. Let product be the product of all values in the array nums.

 Return signFunc(product).
 
 ---
 
 Example 1:
 Input: nums = [-1,-2,-3,-4,3,2,1]
 Output: 1
 Explanation: The product of all values in the array is 144, and signFunc(144) = 1
 
 Example 2:
 Input: nums = [1,5,0,2,-3]
 Output: 0
 Explanation: The product of all values in the array is 0, and signFunc(0) = 0
 
 Example 3:
 Input: nums = [-1,1,-1,1,-1]
 Output: -1
 Explanation: The product of all values in the array is -1, and signFunc(-1) = -1
 */


// MARK: - Inputs

// example 1
// let nums = [-1,-2,-3,-4,3,2,1]
// let output = 1

// example 2
// let nums = [1,5,0,2,-3]
// let output = 0

// example 3
// let nums = [-1,1,-1,1,-1]
// let output = -1


// MARK: - My Solution

/*
 */
//
// func arraySign(_ nums: [Int]) -> Int {
//     var negativeCount = 0
//
//     for num in nums {
//         if num == 0 { return 0 }
//         if num < 0 { negativeCount += 1}
//     }
//
//     return negativeCount % 2 == 0 ? 1 : -1
// }


// MARK: - Play

// let result = arraySign(nums) == output
// print("value:", arraySign(nums))
// print("result:", result)


// MARK: - Best practice

