//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/19.
//

// MARK: - Description

/*
 496. Next Greater Element I
 
 The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.

 You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.

 For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2.
 If there is no next greater element, then the answer for this query is -1.

 Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.
 
 ---
 
 Example 1:
 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
 Output: [-1,3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 4 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
 - 1 is underlined in nums2 = [1,3,4,2]. The next greater element is 3.
 - 2 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
 
 Example 2:
 Input: nums1 = [2,4], nums2 = [1,2,3,4]
 Output: [3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 2 is underlined in nums2 = [1,2,3,4]. The next greater element is 3.
 - 4 is underlined in nums2 = [1,2,3,4]. There is no next greater element, so the answer is -1.
 */



// MARK: - Inputs

// example 1
let nums1 = [4,1,2]
let nums2 = [1,3,4,2]
let output = [-1,3,-1]

// example 2
// let nums1 = [2,4]
// let nums2 = [1,2,3,4]
// let output = [3,-1]


// MARK: - My Solution

/*
 */

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    return nums1.map {
        var index = nums2.firstIndex(of: $0)! + 1
        
        while index < nums2.count {
            if nums2[index] > $0 { return nums2[index] }
            else { index += 1 }
        }
        
        return -1
    }
}


// MARK: - Play

let result = nextGreaterElement(nums1, nums2) == output
// print("value:", nextGreaterElement(nums1, nums2))
print("result:", result)


// MARK: - Best practice
