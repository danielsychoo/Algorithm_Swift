//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/05.
//

// MARK: - Description

/*
 13. Roman to Integer
 
 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given a roman numeral, convert it to an integer.
 
 Example 1:
 Input: s = "III"
 Output: 3
 Explanation: III = 3.
 
 Example 2:
 Input: s = "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.
 
 Example 3:
 Input: s = "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 */


// MARK: - Inputs

// example 1
// let s = "III"
// let output = 3

// example 2
// let s = "LVIII"
// let output = 58

// example 3
let s = "MCMXCIV"
let output = 1994


// MARK: - My Solution

/*
 1. 문자를 쭉 읽으며 앞의 수가 더 크면 그대로
 2. 앞의 수가 더 작으면 (-앞의 수 + 뒤의 수)
 3. 변환결과를 더함
 */

func romanToInt(_ s: String) -> Int {
    let arr = Array(s).map { convertToInt($0) }
    
    var result = 0
    var i = 1
    while arr.count >= i {
        
        if arr.count == i {
            result += arr[arr.count-1]
            break
        }
        
        if arr[i] > arr[i-1] {
            result += (arr[i] - arr[i-1])
            i += 2
        } else {
            result += arr[i-1]
            i += 1
        }
    }
    
    return result
}

func convertToInt(_ symbol: Character) -> Int {
    switch symbol {
    case "I":
        return 1
    case "V":
        return 5
    case "X":
        return 10
    case "L":
        return 50
    case "C":
        return 100
    case "D":
        return 500
    default:
        return 1000
    }
}


// MARK: - Play

let result = romanToInt(s) == output
print("result :", result)


// MARK: - Best practice


