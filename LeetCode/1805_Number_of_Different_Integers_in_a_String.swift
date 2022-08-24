///
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/08/08.
//

// MARK: - Description

/*
 1805. Number of Different Integers in a String

 You are given a string word that consists of digits and lowercase English letters.

 You will replace every non-digit character with a space.
 For example, "a123bc34d8ef34" will become " 123  34 8  34".
 Notice that you are left with some integers that are separated by at least one space: "123", "34", "8", and "34".

 Return the number of different integers after performing the replacement operations on word.

 Two integers are considered different if their decimal representations without any leading zeros are different.

 
 Example 1:
 Input: word = "a123bc34d8ef34"
 Output: 3
 Explanation: The three different integers are "123", "34", and "8". Notice that "34" is only counted once.
 
 Example 2:
 Input: word = "leet1234code234"
 Output: 2
 
 Example 3:
 Input: word = "a1b01c001"
 Output: 1
 Explanation: The three integers "1", "01", and "001" all represent the same integer because
 the leading zeros are ignored when comparing their decimal values.
 */


// MARK: - Inputs

// example 1
// let word = "a123bc34d8ef34"
// let output = 3

// example 2
// let word = "leet1234code234"
// let output = 2

// example 3
// let word = "a1b01c001"
// let output = 1

// MARK: - My Solution

/*
 */

// func numDifferentIntegers(_ word: String) -> Int {
//     var set = Set<String>()
//     var temp = ""
//     word.forEach {
//         if let number = Int(String($0)) {
//             if number == 0 {
//                 if temp == "0" { return }
//                 else { temp += String(number) }
//             } else {
//                 if temp == "0" { temp = String(number) }
//                 else { temp += String(number) }
//             }
//         } else {
//             if !temp.isEmpty {
//                 set.insert(temp)
//                 temp = ""
//             }
//         }
//     }
//
//     if !temp.isEmpty { set.insert(temp) }
//
//     return set.count
// }


// MARK: - Play

// let result = numDifferentIntegers(word) == output
// print("result :", result)


// MARK: - Best practice

