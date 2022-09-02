//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/02.
//

// MARK: - Description

/*
 2239. Find Closest Number to Zero
 
 Given an integer array nums of size n, return the number with the value closest to 0 in nums.
 If there are multiple answers, return the number with the largest value.
 
 ---
 
 Example 1:
 Input: nums = [-4,-2,1,4,8]
 Output: 1
 Explanation:
 The distance from -4 to 0 is |-4| = 4.
 The distance from -2 to 0 is |-2| = 2.
 The distance from 1 to 0 is |1| = 1.
 The distance from 4 to 0 is |4| = 4.
 The distance from 8 to 0 is |8| = 8.
 Thus, the closest number to 0 in the array is 1.
 
 Example 2:
 Input: nums = [2,-1,1]
 Output: 1
 Explanation: 1 and -1 are both the closest numbers to 0, so 1 being larger is returned.
 */


// MARK: - Inputs

// example 1
let nums = [-4,-2,1,4,8]
let output = 1

// example 2
// let nums = [2,-1,1]
// let output = 1


// MARK: - My Solution

/*
 */

func findClosestNumber(_ nums: [Int]) -> Int {
    let sorted = nums.sorted()

    if let positivePointIdx = sorted.firstIndex(where: { $0 > 0 }) {
        
        if positivePointIdx == 0 { /// nums가 모두 양수인 경우 `첫번째`
            return sorted[0]
        } else { /// nums에 양수, 음수가 혼재하는 경우
            
            let positiveValue = sorted[positivePointIdx]
            let negativeValue = sorted[positivePointIdx-1]
            
            if positiveValue <= abs(negativeValue) { return positiveValue }
            else { return negativeValue }
            
        }
        
    } else { /// nums가 모두 음수인 경우 `마지막`
        return sorted[sorted.count-1]
    }
}


// MARK: - Play

let result = findClosestNumber(nums) == output
print("value:", findClosestNumber(nums))
print("result:", result)


// MARK: - Best practice


