//
//  Created by sungyeopTW on 2022/05/31.
//

// MARK: - Description

/*
 2027. Minimum Moves to Convert String
 
 You are given a string s consisting of n characters which are either 'X' or 'O'.
 A move is defined as selecting three consecutive characters of s and converting them to 'O'.
 Note that if a move is applied to the character 'O', it will stay the same.
 Return the minimum number of moves required so that all the characters of s are converted to 'O'.
 
 Example 1:
 Input: s = "XXX"
 Output: 1
 Explanation: XXX -> OOO
 We select all the 3 characters and convert them in one move.
 
 Example 2:
 Input: s = "XXOX"
 Output: 2
 Explanation: XXOX -> OOOX -> OOOO
 We select the first 3 characters in the first move, and convert them to 'O'.
 Then we select the last 3 characters and convert them so that the final string contains all 'O's.
 
 Example 3:
 Input: s = "OOOO"
 Output: 0
 Explanation: There are no 'X's in s to convert.
 */


// MARK: - Inputs

// example 1
// let s = "XXX"
// let output = 1

// example 2
// let s = "XXOX"
// let output = 2

// example 3
// let s = "OOOO"
// let output = 0

// example 4
let s = "OXOX"
let output = 1


// MARK: - My Solution

/*
 Runtime: 8ms (50.00%)
 Memory: 13.9MB (100.00%)
 */

/*
 1. s 를 순회
 2. 순회 중 "O"를 만나면 pass
 3. 순회 중 "X"를 만나면 해당 요소 + 이후 두개 더 까지 "O"로 변환
        이때, result =+ 1
 4. 다시 진행
 */

func minimumMoves(_ s: String) -> Int {
    var arr = s.map { String($0) }
    var index = 0
    var result = 0
    
    while index < arr.count {
        if arr[index] == "O" {
            index += 1
        } else {
            arr[index] = "X"
            
            if index + 1 < arr.count { arr[index + 1] = "O" }
            if index + 2 < arr.count { arr[index + 2] = "O" }
            result += 1
            
            index += 3
        }
    }
    
    return result
}


// MARK: - Play

let result = minimumMoves(s) == output
print("result :", result)


// MARK: - Best practice
