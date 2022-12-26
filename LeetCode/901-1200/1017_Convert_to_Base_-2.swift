//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/06/21.
//

// MARK: - Description

/*
 1017. Convert to Base -2
 
 Given an integer n, return a binary string representing its representation in base -2.
 Note that the returned string should not have leading zeros unless the string is "0".
 정수 n이 주어지면 기본 -2로 표현을 나타내는 이진 문자열을 반환합니다. 문자열이 "0"이 아니면 반환된 문자열에 선행 0이 없어야 합니다.

 Example 1:
 Input: n = 2
 Output: "110"
 Explantion: (-2)2 + (-2)1 = 2
 
 Example 2:
 Input: n = 3
 Output: "111"
 Explantion: (-2)2 + (-2)1 + (-2)0 = 3
 
 Example 3:
 Input: n = 4
 Output: "100"
 Explantion: (-2)2 = 4
*/


// MARK: - Inputs

// example 1
// let n = 2
// let output = "110"

// example 2
// let n = 3
// let output = "111"

// example 3
// let n = 4
// let output = "100"


// MARK: - My Solution

/*
 Runtime:
 Memory:
 */

/*
 let n = 2
 let output = "110"
 */

// func baseNeg2(_ n: Int) -> String {
// }


// MARK: - Play

// let result = baseNeg2(n) == output
// print("result :", result)


// MARK: - Best practice

/*
 2진수와 -2진수는
 
 3을 예로 들 경우
 s : 10101010101010101010101010101010
 n :                               11 (2진수 3)
   ----------------------------------- +
     10101010101010101010101010101101
 s : 10101010101010101010101010101010
   ----------------------------------- ^
                                  111 (-2진수 3)
 */

// func baseNeg2(_ n: Int) -> String {
//     let s = 0xAAAAAAAA /// 10101010101010101010101010101010 (0 <= n <= 10의 9승 범위 모두 포함)
//
//     return String((n + s) ^ s, radix: 2)
// }
