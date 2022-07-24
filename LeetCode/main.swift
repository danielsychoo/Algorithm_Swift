//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/24.
//

// MARK: - Description

/*
 1243. Array Transformation
 
 Given an initial array arr, every day you produce a new array using the array of the previous day.

 On the i-th day, you do the following operations on the array of day i-1 to produce the array of day i:

 If an element is smaller than both its left neighbor and its right neighbor, then this element is incremented.
 If an element is bigger than both its left neighbor and its right neighbor, then this element is decremented.
 The first and last elements never change.
 After some days, the array does not change. Return that final array.
 
 Example 1:
 Input: arr = [6,2,3,4]
 Output: [6,3,3,4]
 Explanation:
 On the first day, the array is changed from [6,2,3,4] to [6,3,3,4].
 No more operations can be done to this array.
 
 Example 2:
 Input: arr = [1,6,3,4,3,5]
 Output: [1,4,4,4,4,5]
 Explanation:
 On the first day, the array is changed from [1,6,3,4,3,5] to [1,5,4,3,4,5].
 On the second day, the array is changed from [1,5,4,3,4,5] to [1,4,4,4,4,5].
 No more operations can be done to this array.
 */


// MARK: - Inputs

// example 1
let arr = [6,2,3,4]
let output = [6,3,3,4]

// example 2
// let arr = [1,6,3,4,3,5]
// let output = [1,4,4,4,4,5]


// MARK: - My Solution

/*
 */

func transformArray(_ arr: [Int]) -> [Int] {
    return []
}


// MARK: - Play

let result = transformArray(arr) == output
print("result :", result)


// MARK: - Best practice

