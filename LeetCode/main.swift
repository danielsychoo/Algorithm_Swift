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
// let num = 1994
// let output = "MCMXCIV"

// example 4
let num = 20
let output = "XX"


// MARK: - My Solution

/*
 1. func intToRoman -- num을 Int배열로 변경
 2. func outerCalculate -- num의 자릿수에 따라 연산 분기
 3. func innerCalculate -- 각 자릿수에 Symbol 연산
 */

func intToRoman(_ num: Int) -> String {
    
    let temp = Array(String(num))
    let arr = temp.map { Int(String($0))! }
    
    return outerCalculate(arr)
}

func outerCalculate(_ arr: [Int]) -> String {
    var result = ""
    
    switch arr.count { /// 자릿수에 따라 분기
    case 4:
        for _ in 1 ... arr[0] {
            result += "M"
        }
        result += innerCalculate(from: (100, arr[1]))
        result += innerCalculate(from: (10, arr[2]))
        result += innerCalculate(from: (1, arr[3]))
    case 3:
        result += innerCalculate(from: (100, arr[0]))
        result += innerCalculate(from: (10, arr[1]))
        result += innerCalculate(from: (1, arr[2]))
    case 2:
        result += innerCalculate(from: (10, arr[0]))
        result += innerCalculate(from: (1, arr[1]))
    default:
        result += innerCalculate(from: (1, arr[0]))
    }
    
    return result
}

func innerCalculate(from value: (Int, Int)) -> String { /// (자리수, 값)
    if value.1 == 0 { return "" } /// 0이면 연산 ㄴㄴ
    
    var symbols: [String] = [] /// 자리수에 따라 사용될 symbol들
    switch value.0 {
    case 100:
        symbols = ["C", "CD", "D", "CM"]
    case 10:
        symbols = ["X", "XL", "L", "XC"]
    default:
        symbols = ["I", "IV", "V", "IX"]
    }
    
    var result = ""
    
    if value.1 < 4 { /// 연산
        for _ in 1 ... value.1 {
            result += symbols[0]
        }
    } else if value.1 == 4 {
        result += symbols[1]
    } else if value.1 == 5 {
        result += symbols[2]
    } else if value.1 == 9 {
        result += symbols[3]
    } else {
        result += symbols[2]
        
        for _ in 1 ... value.1 - 5 {
            result += symbols[0]
        }
    }
    
    return result
}


// MARK: - Play

let result = intToRoman(num) == output
print("result :", result)


// MARK: - Best practice
