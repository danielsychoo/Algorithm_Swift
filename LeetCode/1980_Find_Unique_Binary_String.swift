//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/06/21.
//

// MARK: - Description

/*
 1980. Find Unique Binary String
 
 Given an array of strings nums containing n unique binary strings each of length n, return a binary string of length n that does not appear in nums. If there are multiple answers, you may return any of them.
 각각 길이가 n인 n개의 고유한 이진 문자열을 포함하는 문자열 nums의 배열이 주어지면 nums에 나타나지 않는 길이가 n인 이진 문자열을 반환합니다. 답변이 여러 개인 경우 그 중 아무 것도 반환할 수 있습니다.

 Example 1:
 Input: nums = ["01","10"]
 Output: "11"
 Explanation: "11" does not appear in nums. "00" would also be correct.
 
 Example 2:
 Input: nums = ["00","01"]
 Output: "11"
 Explanation: "11" does not appear in nums. "10" would also be correct.
 
 Example 3:
 Input: nums = ["111","011","001"]
 Output: "101"
 Explanation: "101" does not appear in nums. "000", "010", "100", and "110" would also be correct.
*/


// MARK: - Inputs

// example 1
// let nums = ["01","10"]
// let output = "11"

// example 2
// let nums = ["00","01"]
// let output = "11"

// example 3
// let nums = ["111","011","001"]
// let output = "101"

// example 4
// let nums = ["0"]
// let output = "1"


// MARK: - My Solution

/*
 Runtime: 13ms(33.33%)
 Memory: 14.8MB(33.33%)
 */
// import Foundation
//
// func findDifferentBinaryString(_ nums: [String]) -> String {
//     let count: Float = Float(nums.count)
//     let max: Int = Int(pow(count, 2)) - 1
//
//     // EdgeCase
//     if nums.count == 1 {
//         switch nums[0] {
//         case "1":
//             return "0"
//         default:
//             return "1"
//         }
//     }
//
//     for value in 0 ... max {
//         var bitValue = String(value, radix:2)
//         while bitValue.count < Int(count) { bitValue = "0" + bitValue }
//         if !nums.contains(bitValue) { return bitValue }
//     }
//
//     return ""
// }


// MARK: - Play

// let result = findDifferentBinaryString(nums) == output
// print("result :", result)


// MARK: - Best practice

