//
//  Created by sungyeopTW on 2023/01/03.
//

// MARK: - Description

/*
 1736. Latest Time by Replacing Hidden Digits
 
 You are given a string time in the form of hh:mm, where some of the digits in the string are hidden (represented by ?).

 The valid times are those inclusively between 00:00 and 23:59.

 Return the latest valid time you can get from time by replacing the hidden digits.
 
 Example 1:
 Input: time = "2?:?0"
 Output: "23:50"
 Explanation: The latest hour beginning with the digit '2' is 23 and the latest minute ending with the digit '0' is 50.
 
 Example 2:
 Input: time = "0?:3?"
 Output: "09:39"

 Example 3:
 Input: time = "1?:22"
 Output: "19:22"
 */


// MARK: - Inputs

// example 1
// let time = "2?:?0"
// let output = "23:50"

// example 2
// let time = "0?:3?"
// let output = "09:39"

// example 3
// let time = "1?:22"
// let output = "19:22"


// MARK: - My Solution

// 0 이 ? 이고
//   1 이 ?, 0, 1, 2, 3 이면 2
//   1 이 4 이상이면 1
// 1 이 ? 이고
//   0 이 ?, 2 이면 3
//            아니면 9
// 3 이 ? 이면 5
// 4 가 ? 이면 9


// func maximumTime(_ time: String) -> String {
//
//     var timeArr = time.map { String($0) }
//
//     if timeArr[0] == "?" {
//
//         switch timeArr[1] {
//         case "?", "0", "1", "2", "3":
//             timeArr[0] = "2"
//         default:
//             timeArr[0] = "1"
//         }
//     }
//
//     if timeArr[1] == "?" {
//
//         switch timeArr[0] {
//         case "?", "2":
//             timeArr[1] = "3"
//         default:
//             timeArr[1] = "9"
//         }
//     }
//
//     if timeArr[3] == "?" { timeArr[3] = "5" }
//     if timeArr[4] == "?" { timeArr[4] = "9" }
//
//     return timeArr.joined()
// }


// MARK: - Play

// let result = maximumTime(time) == output
// print("value:", maximumTime(time))
// print("result:", result)


// MARK: - Best practice
