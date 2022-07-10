//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/10.
//

// MARK: - Description

/*
 2210. Count Hills and Valleys in an Array
 
 You are given a 0-indexed integer array nums. An index i is part of a hill in nums if the closest non-equal neighbors of i are smaller than nums[i]. Similarly, an index i is part of a valley in nums if the closest non-equal neighbors of i are larger than nums[i]. Adjacent indices i and j are part of the same hill or valley if nums[i] == nums[j].

 Note that for an index to be part of a hill or valley, it must have a non-equal neighbor on both the left and right of the index.

 Return the number of hills and valleys in nums.
 
 Example 1:
 Input: nums = [2,4,1,1,6,5]
 Output: 3
 
 Example 2:
 Input: nums = [6,6,5,5,4,1]
 Output: 0
 */


// MARK: - Inputs

// example 1
// let nums = [2,4,1,1,6,5]
// let output = 3

// example 2
let nums = [6,6,5,5,4,1]
let output = 0


// MARK: - My Solution

/*
 */

func countHillValley(_ nums: [Int]) -> Int {
    var result = 0
    var keep = ""
    
    for i in 1 ..< nums.count - 1 {
        let left = nums[i - 1]
        let current = nums[i]
        let right = nums[i + 1]
        
        if left < current {
            if current > right { result += 1 }
            if current == right { keep = "up" }
        }
        else if left > current {
            if current < right { result += 1 }
            if current == right { keep = "down" }
        }
        else if keep == "up" {
            if current == right { continue }
            if current > right {
                result += 1
                keep = ""
            }
        }
        else if keep == "down" {
            if current == right { continue }
            if current < right {
                result += 1
                keep = ""
            }
        }
    }
    
    return result
}


// MARK: - Play

let result = countHillValley(nums) == output
print("result :", result)


// MARK: - Best practice

