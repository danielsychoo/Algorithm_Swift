//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/18.
//

// MARK: - Description

/*
 1431. Kids With the Greatest Number of Candies
 
 There are n kids with candies. You are given an integer array candies, where each candies[i] represents the number of candies the ith kid has, and an integer extraCandies, denoting the number of extra candies that you have.

 Return a boolean array result of length n, where result[i] is true if, after giving the ith kid all the extraCandies, they will have the greatest number of candies among all the kids, or false otherwise.

 Note that multiple kids can have the greatest number of candies.
 
 Example 1:
 Input: candies = [2,3,5,1,3], extraCandies = 3
 Output: [true,true,true,false,true]
 Explanation: If you give all extraCandies to:
 - Kid 1, they will have 2 + 3 = 5 candies, which is the greatest among the kids.
 - Kid 2, they will have 3 + 3 = 6 candies, which is the greatest among the kids.
 - Kid 3, they will have 5 + 3 = 8 candies, which is the greatest among the kids.
 - Kid 4, they will have 1 + 3 = 4 candies, which is not the greatest among the kids.
 - Kid 5, they will have 3 + 3 = 6 candies, which is the greatest among the kids.
 
 Example 2:
 Input: candies = [4,2,1,1,2], extraCandies = 1
 Output: [true,false,false,false,false]
 Explanation: There is only 1 extra candy.
 Kid 1 will always have the greatest number of candies, even if a different kid is given the extra candy.
 
 Example 3:
 Input: candies = [12,1,12], extraCandies = 10
 Output: [true,false,true]
 */


// MARK: - Inputs

// example 1
// let candies = [2,3,5,1,3]
// let extraCandies = 3
// let output = [true,true,true,false,true]

// example 2
// let candies = [4,2,1,1,2]
// let extraCandies = 1
// let output = [true,false,false,false,false]

// example 3
// let candies = [12,1,12]
// let extraCandies = 10
// let output = [true,false,true]


// MARK: - My Solution

/*
 - candies 배열의 길이만큼의 아이들
 - candies 배열의 각 값은 index번째 아이가 가진 사탕 수
 - extraCandies는 내가 가진 여분의 사탕 수
 
 - 반환할 result 배열의 길이는 candies.count
 - extraCandies를 주었을 때 index번째 아이가 가장 사탕을 많이 가졌으면 true 아니면 false
 */

// func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
//     var result: [Bool] = []
//     for item in candies {
//         let added = item + extraCandies
//
//         if candies.filter { added < $0 }.isEmpty { result.append(true) }
//         else { result.append(false) }
//     }
//
//     return result
// }


// MARK: - Play

// let result = kidsWithCandies(candies, extraCandies) == output
// print("result :", result)


// MARK: - Best practice

