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
// let name = "alex"
// let typed = "aaleex"
// let output = true

// example 2
// let name = "saeed"
// let typed = "ssaaedd"
// let output = false

// exmaple 3
// let name = "leelee"
// let typed = "lleeelee"
// let output = true

// example 4
// let name = "vtkgn"
// let typed = "vttkgnn"
// let output = true

// example 5
// let name = "alex"
// let typed = "aaleexeex"
// let output = false

// example 6
// let name = "alexd"
// let typed = "ale"
// let output = false

// example 7
// let name = "a"
// let typed = "aaaaaaaaaaaaaaaaa"
// let output = true


// MARK: - My Solution

/*
 */

// func isLongPressedName(_ name: String, _ typed: String) -> Bool {
//
//     // edgeCase
//     if name.first != typed.first {
//         return false
//     }
//     if Set(name).count == 1 && Set(typed).count == 1 && name.first == typed.first { return true }
//
//     var m = 1
//     var over = 0
//     for i in 1..<typed.count {
//         let currentTyped = getCharacter(typed, with: i)
//         let currentName = getCharacter(name, with: m)
//         let beforeName = getCharacter(name, with: m-1)
//
//         if currentTyped == currentName { m += 1 }
//         else if currentTyped == beforeName {
//             over += 1
//             continue
//         }
//         else { return false }
//     }
//
//     if m > name.count { return (m - over) <= name.count }
//     else { return m == name.count }
// }
//
// func getCharacter(_ string: String, with i: Int) -> Character {
//     if i > string.count-1 {
//         return string.last!
//     } else {
//         let index = string.index(string.startIndex, offsetBy: i)
//         return string[index]
//     }
// }


// MARK: - Play

// let result = isLongPressedName(name, typed) == output
// // print("value:", nextGreaterElement(nums1, nums2))
// print("result:", result)


// MARK: - Best practice
