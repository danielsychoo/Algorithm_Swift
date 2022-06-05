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
// let pushed = [1,2,3,4,5]
// let popped = [4,5,3,2,1]
// let output = true

// example 2
// let pushed = [1,2,3,4,5]
// let popped = [4,3,5,1,2]
// let output = false

// example 3
// let pushed = [2,1,0]
// let popped = [1,2,0]
// let output = true


// MARK: - My Solution

/*
 Runtime: 47ms(66.67%)
 Memory: 13.9MB(66.67%)
 */
// func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
//     var stack: [Int] = []
//     var poppedIndex = 0
//
//     for pushedItem in pushed {
//         if pushedItem == popped[poppedIndex] { /// 같으면 상쇄 (push됐다가 pop)
//             poppedIndex += 1
//         } else {
//             stack.append(pushedItem)
//         }
//
//         var canPop = !stack.isEmpty
//             ? stack.last == popped[poppedIndex]
//             : false
//
//         while canPop { /// pop이 가능한동안 pop 진행
//             stack.removeLast()
//             poppedIndex += 1
//             canPop = !stack.isEmpty
//                 ? stack.last == popped[poppedIndex]
//                 : false
//         }
//     }
//
//     return stack.isEmpty ? true : false
// }


// MARK: - Play

// let result = validateStackSequences(pushed, popped) == output
// print("result :", result)


// MARK: - Best practice

// func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
//     var arr: [Int] = [], idx = 0
//
//     for n in pushed {
//         arr.append(n)
//         while arr.count > 0, idx < popped.count, arr.last! == popped[idx] {
//             idx += 1
//             arr.removeLast()
//         }
//     }
//     return idx == popped.count
// }
