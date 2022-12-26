//
//  Created by sungyeopTW on 2022/12/26.
//

// MARK: - Description

/*
 69. Sqrt(x)
 
 Given a non-negative integer x, return the square root of x rounded down to the nearest integer.
 The returned integer should be non-negative as well.

 You must not use any built-in exponent function or operator.

 - For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
 
 Example 1:
 Input: x = 4
 Output: 2
 Explanation: The square root of 4 is 2, so we return 2.
 
 Example 2:
 Input: x = 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
 */


// MARK: - Inputs

// example 1
// let x = 4
// let output = 2

// example 2
// let x = 8
// let output = 2


// MARK: - My Solution

// func mySqrt(_ x: Int) -> Int {
//
//     var value = 0
//     while value * value <= x {
//         value += 1
//     }
//
//     return value-1
// }


// MARK: - Play

// let result = mySqrt(x) == output
// print("value:", mySqrt(x))
// print("result:", result)


// MARK: - Best practice
