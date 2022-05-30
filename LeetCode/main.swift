//
//  Created by sungyeopTW on 2022/05/26.
//


// MARK: - Description

/*
 946. Validate Stack Sequences
 
 Given two integer arrays pushed and popped each with distinct values,
 return true if this could have been the result of a sequence of push and pop operations on an initially empty stack, or false otherwise.
 
 Example 1:
 Input: pushed = [1,2,3,4,5], popped = [4,5,3,2,1]
 Output: true
 Explanation: We might do the following sequence:
 push(1), push(2), push(3), push(4),
 pop() -> 4,
 push(5),
 pop() -> 5, pop() -> 3, pop() -> 2, pop() -> 1
 
 Example 2:
 Input: pushed = [1,2,3,4,5], popped = [4,3,5,1,2]
 Output: false
 Explanation: 1 cannot be popped before 2.
 */


// MARK: - Inputs

// example 1
let pushed = [1,2,3,4,5]
let popped = [4,5,3,2,1]
let output = true

// example 2
// let pushed = [1,2,3,4,5]
// let popped = [4,3,5,1,2]
// let output = false


// MARK: - My Solution

func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
    return false
}


// MARK: - Play

let result = validateStackSequences(pushed, popped) == output
print("result :", result)


// MARK: - Best practice
