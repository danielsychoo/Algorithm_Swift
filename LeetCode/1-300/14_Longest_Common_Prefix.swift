//
//  Created by sungyeopTW on 2022/12/26.
//

// MARK: - Description

/*
 14. Longest Common Prefix
 
 Write a function to find the longest common prefix string amongst an array of strings.
 If there is no common prefix, return an empty string "".
 
 문자열 배열 중에서 가장 긴 공통 접두사 문자열을 찾는 함수를 작성하십시오.
 공통 접두사가 없으면 빈 문자열 ""을 반환합니다.
 
 ---
 
 Example 1:
 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Output: "fl"
 
 Example 2:
 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */


// MARK: - Inputs

// example 1
// let strs = ["flower","flow","flight"]
// let output = "fl"

// example 2
// let strs = ["dog","racecar","car"]
// let output = ""


// MARK: - My Solution

// func longestCommonPrefix(_ strs: [String]) -> String {
//
//     // edgeCase
//     if strs.isEmpty == true { return "" }
//
//     var minStr = (strs.min{ $0.count < $1.count })! /// 가장 짧은 str 찾기
//
//     for str in strs {
//         while !str.hasPrefix(minStr) {
//             minStr.removeLast() /// 맨 끝 자름
//         }
//     }
//
//     return minStr
// }


// MARK: - Play

// let result = longestCommonPrefix(strs) == output
// print("value:", longestCommonPrefix(strs))
// print("result:", result)


// MARK: - Best practice

