//
//  Created by sungyeopTW on 2022/06/06.
//

import Darwin


// MARK: - Description

/*
 9. Palindrome Number
 
 Given an integer x, return true if x is palindrome integer.
 An integer is a palindrome when it reads the same backward as forward.

 For example, 121 is a palindrome while 123 is not.

 Example 1:
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 
 Example 2:
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 
 Example 3:
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
*/


// MARK: - Inputs

// example 1
let x = 121
let output = true

// example 2
// let x = -121
// let output = false

// example 3
// let x = 10
// let output = false


// MARK: - My Solution

/*
 Runtime: 52ms(64.15%)
 Memory: 13.9MB (70.89%)
 */

// func isPalindrome(_ x: Int) -> Bool {
//
//     let arr = Array(String(x))
//     var left = 0
//     var right = arr.count - 1
//
//     while left < right {
//         if arr[left] != arr[right] { return false }
//
//         left += 1
//         right -= 1
//     }
//
//     return true
// }


// MARK: - Play

// let result = isPalindrome(x) == output
// print("result :", result)


// MARK: - Best practice

// func isPalindrome(_ x: Int) -> Bool {
//     return x < 0 ? false : method(x: x) == x /// 음수면 `-` 붙으므로 무조건 false
// }
// private func method(x: Int) -> Int {
//     var r = 0
//     var x = x
//     while x != 0 {
//         r = r * 10
//         r = r + x % 10
//         x /= 10
//     }
//     return (r < Int32.min || r > Int32.max) ? 0 : r
// }
