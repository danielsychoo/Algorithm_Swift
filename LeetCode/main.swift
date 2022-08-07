//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/08/08.
//

// MARK: - Description

/*
 1523. Count Odd Numbers in an Interval Range

 Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).
 
 Example 1:
 Input: low = 3, high = 7
 Output: 3
 Explanation: The odd numbers between 3 and 7 are [3,5,7].
 
 Example 2:
 Input: low = 8, high = 10
 Output: 1
 Explanation: The odd numbers between 8 and 10 are [9].
 */


// MARK: - Inputs

// example 1
let low = 3
let high = 7
let output = 3

// example 2
// let low = 8
// let high = 10
// let output = 1


// MARK: - My Solution

/*
 */

func countOdds(_ low: Int, _ high: Int) -> Int {
    // var count = 0
    // for i in low ... high {
    //     if i % 2 != 0 { result += 1 }
    // }
    var num = (low % 2 != 0) ? (low) : (low + 1)
    var count = 0
    
    
    while num <= high {
        num += 2
        count += 1
    }
    return count
}


// MARK: - Play

let result = countOdds(low, high) == output
print("result :", result)


// MARK: - Best practice
