//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/06.
//

// MARK: - Description

/*
 12. Integer to Roman
 
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given an integer, convert it to a roman numeral.
 
 Example 1:
 Input: num = 3
 Output: "III"
 Explanation: 3 is represented as 3 ones.
 
 Example 2:
 Input: num = 58
 Output: "LVIII"
 Explanation: L = 50, V = 5, III = 3.
 
 Example 3:
 Input: num = 1994
 Output: "MCMXCIV"
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 */


// MARK: - Inputs

// example 1
// let num = 3
// let output = "III"

// example 2
// let num = 58
// let output = "LVIII"

// example 3
let num = 1994
let output = "MCMXCIV"


// MARK: - My Solution

/*
 1. 문자를 쭉 읽으며 앞의 수가 더 크면 그대로
 2. 앞의 수가 더 작으면 (-앞의 수 + 뒤의 수)
 3. 변환결과를 더함
 */

func intToRoman(_ num: Int) -> String {
    return ""
}

// func convertToInt(_ symbol: Character) -> Int {
//     switch symbol {
//     case "I":
//         return 1
//     case "V":
//         return 5
//     case "X":
//         return 10
//     case "L":
//         return 50
//     case "C":
//         return 100
//     case "D":
//         return 500
//     default:
//         return 1000
//     }
// }


// MARK: - Play

let result = intToRoman(num) == output
print("result :", result)


// MARK: - Best practice
