//
//  Created by sungyeopTW on 2022/12/26.
//

// MARK: - Description

/*
 20. Valid Parentheses
 
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
 
 ---
 
 Example 1:
 Input: s = "()"
 Output: true
 
 Example 2:
 Input: s = "()[]{}"
 Output: true
 
 Example 3:
 Input: s = "(]"
 Output: false
 */


// MARK: - Inputs

// example 1
// let s = "()"
// let output = true

// example 2
// let s = "()[]{}"
// let output = true

// example 3
// let s = "({})"
// let output = false


// MARK: - My Solution

// func isValid(_ s: String) -> Bool {
//
//     if s.count % 2 != 0 { return false } /// 길이가 홀수면 짝이 안맞으므로 false
//
//     var stack: [Character] = []
//     for cha in s {
//         switch cha {
//         case "(": stack.append(")")
//         case "{": stack.append("}")
//         case "[": stack.append("]")
//         default:
//             /// 짝이 안맞는 경우
//             /// 1. 닫힐 차례인데 stack이 비어있는 경우
//             /// 2. stack의 마지막 값이 닫힌 값과 다를 경우
//             if stack.isEmpty || stack.removeLast() != cha {
//                 return false
//             }
//         }
//     }
//
//     return stack.isEmpty
// }


// MARK: - Play

// let result = isValid(s) == output
// print("value:", isValid(s))
// print("result:", result)


// MARK: - Best practice


