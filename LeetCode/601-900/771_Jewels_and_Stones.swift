//
//  Created by sungyeopTW on 2023/01/04.
//

// MARK: - Description

/*
 771. Jewels and Stones
 
 You're given strings jewels representing the types of stones that are jewels, and stones representing the stones you have.
 Each character in stones is a type of stone you have. You want to know how many of the stones you have are also jewels.

 Letters are case sensitive, so "a" is considered a different type of stone from "A".
 
 Example 1:
 Input: jewels = "aA", stones = "aAAbbbb"
 Output: 3

 Example 2:
 Input: jewels = "z", stones = "ZZ"
 Output: 0
 */


// MARK: - Inputs

// example 1
// let jewels = "aA"
// let stones = "aAAbbbb"
// let output = 3

// example 2
// let jewels = "z"
// let stones = "ZZ"
// let output = 0


// MARK: - My Solution

// func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
//
//     var count = 0
//
//     stones.forEach { stone in
//
//         jewels.forEach { jewel in
//             if stone == jewel { count += 1 }
//         }
//     }
//
//     return count
// }


// MARK: - Play

// let result = numJewelsInStones(jewels, stones) == output
// print("value:", numJewelsInStones(jewels, stones))
// print("result:", result)


// MARK: - Best practice
