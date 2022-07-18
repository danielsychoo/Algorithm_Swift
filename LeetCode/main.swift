//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/18.
//

// MARK: - Description

/*
 1119. Remove Vowels from a String
 
 Given a string s, remove the vowels 'a', 'e', 'i', 'o', and 'u' from it, and return the new string.
 
 Example 1:
 Input: s = "leetcodeisacommunityforcoders"
 Output: "ltcdscmmntyfrcdrs"
 
 Example 2:
 Input: s = "aeiou"
 Output: ""
 */


// MARK: - Inputs

// example 1
let s = "leetcodeisacommunityforcoders"
let output = "ltcdscmmntyfrcdrs"

// example 2
// let s = "aeiou"
// let output = ""


// MARK: - My Solution

/*
 */

func removeVowels(_ s: String) -> String {
    var arr = Array(s)
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    for item in vowels {
        arr = arr.filter { $0 != item }
    }
    
    return String(arr)
}


// MARK: - Play

let result = removeVowels(s) == output
print("result :", result)


// MARK: - Best practice
