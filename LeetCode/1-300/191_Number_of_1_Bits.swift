//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/02.
//

// MARK: - Description

/*
 191. Number of 1 Bits
 
 Write a function that takes an unsigned integer and returns the number of '1' bits it has (also known as the Hamming weight).

 Note:

 Note that in some languages, such as Java, there is no unsigned integer type. In this case, the input will be given as a signed integer type.
 It should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.
 In Java, the compiler represents the signed integers using 2's complement notation.
 Therefore, in Example 3, the input represents the signed integer. -3.
 
 ---
 
 Example 1:
 Input: n = 00000000000000000000000000001011
 Output: 3
 Explanation: The input binary string 00000000000000000000000000001011 has a total of three '1' bits.
 
 Example 2:
 Input: n = 00000000000000000000000010000000
 Output: 1
 Explanation: The input binary string 00000000000000000000000010000000 has a total of one '1' bit.
 
 Example 3:
 Input: n = 11111111111111111111111111111101
 Output: 31
 Explanation: The input binary string 11111111111111111111111111111101 has a total of thirty one '1' bits.
 */


// MARK: - Inputs

// example 1
// let n = Int("00000000000000000000000000001011", radix: 2)!
// let output = 3

// example 2
// let n = Int("00000000000000000000000010000000", radix: 2)!
// let output = 1

// example 3
// let n = Int("11111111111111111111111111111101", radix: 2)!
// let output = 31


// MARK: - My Solution

/*
 */

// func hammingWeight(_ n: Int) -> Int {
//     let binary = String(n, radix: 2)
//     return binary.filter { $0 == "1" }.count
// }


// MARK: - Play

// let result = hammingWeight(n) == output
// print("value:", hammingWeight(n))
// print("result:", result)


// MARK: - Best practice


