//
//  Created by sungyeopTW on 2023/01/04.
//

// MARK: - Description

/*
 1480. Running Sum of 1d Array
 
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
 Return the running sum of nums.
 
 Example 1:
 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

 Example 2:
 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 
 Example 3:
 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
 */


// MARK: - Inputs

// example 1
// let nums = [1,2,3,4]
// let output = [1,3,6,10]

// example 2
// let nums = [1,1,1,1,1]
// let output = [1,2,3,4,5]

// example 3
// let nums = [3,1,2,10,1]
// let output = [3,4,6,16,17]


// MARK: - My Solution

// func runningSum(_ nums: [Int]) -> [Int] {
//
//     if nums.count == 0 { return [] }
//
//     var result = [nums[0]]
//     for i in 1...nums.count-1 {
//         let num = result[i-1] + nums[i]
//         result.append(num)
//     }
//
//     return result
// }

// MARK: - Play

// let result = runningSum(nums) == output
// print("value:", runningSum(nums))
// print("result:", result)


// MARK: - Best practice
