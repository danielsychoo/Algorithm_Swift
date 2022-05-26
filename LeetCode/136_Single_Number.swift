//
//  Created by sungyeopTW on 2022/05/24.
//


// MARK: - Description

/*
 136. Single Number
 
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
 You must implement a solution with a linear runtime complexity and use only constant extra space.
 
 Example 1:
 Input: nums = [2,2,1]
 Output: 1
 
 Example 2:
 Input: nums = [4,1,2,1,2]
 Output: 4
 
 Example 3:
 Input: nums = [1]
 Output: 1
 */


// MARK: - Inputs

// example 1
// let nums = [2,2,1]
// let output = 1

// example 2
// let nums = [4,1,2,1,2]
// let output = 4

// example 3
// let nums = [1]
// let output = 1


// MARK: - My Solution

/*
 Runtime: 160ms(40.43%)
 Memory: 14.5MB(96.81%)
 */
// func singleNumber(_ nums: [Int]) -> Int {
//     let sortedNums = nums.sorted() /// 소팅 못 없애누..?
//
//     var index = 0
//     while index < sortedNums.count {
//         if index == sortedNums.count-1 || sortedNums[index] != sortedNums[index+1] {
//             return sortedNums[index]
//         }
//
//         index += 2
//     }
//
//     return 0
// }

/*
 Runtime: 275ms(5.85%)
 Memory: 15MB(16.84%)
 */
// func singleNumber(_ nums: [Int]) -> Int {
//     var memo: [Int] = []
//
//     for (index, num) in nums.enumerated() {
//         if memo.contains(num) {
//             continue
//         }
//
//         if nums.lastIndex(of: num) == index {
//             return num
//         } else {
//             memo.append(num)
//         }
//     }
//
//     return 0
// }

/*
 Runtime: 352ms(5.14%)
 Memory: 14.9MB(50.00%)
 */
// func singleNumber(_ nums: [Int]) -> Int {
//     for index in 0...nums.count-1 {
//         let pointValue = nums[index]
//
//         if nums.filter({ $0 == pointValue }).count == 1 { /// for loop 내부의 filter라 시간이 2중으로 드는 듯
//             return pointValue
//         }
//
//     }
//
//     return 0
// }


// MARK: - Play

// let result = singleNumber(nums) == output
// print("result :", result)


// MARK: - Best practice

/*
 - 주석[1]
 (`^` XOR 비트 연산 -- https://han.gl/nHbOg)
 
 0 : 0      0      0  (첫 비교값)
 
 4 : 1      0      0  (input 배열)
 1 : 0      0      1
 2 : 0      1      0
 1 : 0      0      1
 2 : 0      1      0
 --------------------
 4 : 1      0      0 (결과값)
  (홀수개) (짝수개) (짝수개)
 */

// func singleNumber(_ nums: [Int]) -> Int {
//
//     var ans = 0
//     for num in nums { ans ^= num } /// 주석[1]
//     return ans
//
// }
