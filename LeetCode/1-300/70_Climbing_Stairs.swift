//
//  Created by sungyeopTW on 2022/12/26.
//

// MARK: - Description

/*
 70. Climbing Stairs
 
 You are climbing a staircase. It takes n steps to reach the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 
 Example 1:
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 
 Example 2:
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
 */


// MARK: - Inputs

// example 1
// let n = 2
// let output = 2

// example 2
// let n = 3
// let output = 3


// MARK: - My Solution

/**
 * num --  1 . 2 . 3 . 4 . 5 .  6  . ...
 * value -- 1 . 2 . 3 . 5 . 8 . 13 . ...
 * 피보나치 수열 ? 다만, 한자리 다름
 */

// func climbStairs(_ n: Int) -> Int {
//     return fibonacci(n+1)
// }
//
// func fibonacci(_ n: Int) -> Int {
//     var cache: [Int] = [0, 1]
//
//     guard n > 1 else { return n }
//
//     for num in 2...n {
//         cache.append(cache[num-2] + cache[num-1])
//     }
//
//     return cache[n]
// }

// func fibonacci(_ n: Int) -> Int {
//     if n <= 1 { return n }
//     return fibonacci(n - 1) + fibonacci(n - 2)
// }


// MARK: - Play

// let result = climbStairs(n) == output
// print("value:", climbStairs(n))
// print("result:", result)


// MARK: - Best practice

