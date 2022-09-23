//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/23.
//

// MARK: - Description

/*
 925. Long Pressed Name
 
 Your friend is typing his name into a keyboard.
 Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.

 You examine the typed characters of the keyboard.
 Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.
 
 ---
 
 Example 1:
 Input: name = "alex", typed = "aaleex"
 Output: true
 Explanation: 'a' and 'e' in 'alex' were long pressed.
 
 Example 2:
 Input: name = "saeed", typed = "ssaaedd"
 Output: false
 Explanation: 'e' must have been pressed twice, but it was not in the typed output.
 */



// MARK: - Inputs

// example 1
let name = "alex"
let typed = "aaleex"
let output = true

// example 2
// let name = "saeed"
// let typed = "ssaaedd"
// let output = false



// MARK: - My Solution

/*
 */

func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    return false
}

// MARK: - Play

let result = isLongPressedName(name, typed) == output
// print("value:", nextGreaterElement(nums1, nums2))
print("result:", result)


// MARK: - Best practice
