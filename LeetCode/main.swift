//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/24.
//

// MARK: - Description

/*
 163. Missing Ranges
 
 You are given an inclusive range [lower, upper] and a sorted unique integer array nums, where all elements are in the inclusive range.

 A number x is considered missing if x is in the range [lower, upper] and x is not in nums.

 Return the smallest sorted list of ranges that cover every missing number exactly. That is, no element of nums is in any of the ranges, and each missing number is in one of the ranges.
 
 Each range [a,b] in the list should be output as:
 "a->b" if a != b
 "a" if a == b
 
 Example 1:
 Input: nums = [0,1,3,50,75], lower = 0, upper = 99
 Output: ["2","4->49","51->74","76->99"]
 Explanation: The ranges are:
 [2,2] --> "2"
 [4,49] --> "4->49"
 [51,74] --> "51->74"
 [76,99] --> "76->99"
 
 Example 2:
 Input: nums = [-1], lower = -1, upper = -1
 Output: []
 Explanation: There are no missing ranges since there are no missing numbers.
 */


// MARK: - Inputs

// example 1
let nums = [0,1,3,50,75]
let lower = 0
let upper = 99
let output = ["2","4->49","51->74","76->99"]

// example 2
// let nums = [-1]
// let lower = -1
// let upper = -1
// let output = []


// MARK: - My Solution

/*
 */

func findMissingRanges(_ nums: [Int], _ lower: Int, _ upper: Int) -> [String] {
    return []
}


// MARK: - Play

let result = findMissingRanges(nums, lower, upper) == output
print("result :", result)


// MARK: - Best practice

