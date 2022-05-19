//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/05/19.
//

import CoreGraphics


// MARK: - Description

/*
 4. Median of Two Sorted Arrays
 
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
 The overall run time complexity should be O(log (m+n)).
 
 Example 1:
 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.
 
 Example 2:
 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 */


// MARK: - Inputs

// example 1
// let nums1 = [1, 3]
// let nums2 = [2]
// let output = 2.00000

// example 2
let nums1 = [1, 2]
let nums2 = [3, 4]
let output = 2.50000

// example 3
// let nums1 = [1, 3]
// let nums2 = [2, 7]
// let output = 2.50000

// edge 1
// let nums1: [Int] = []
// let nums2 = [1]
// let output = 1.00000


// MARK: - My Solution

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    
    let arr = (nums1 + nums2).sorted() // 합치고 정렬

    if(arr.count % 2 == 0) {
        let left = (arr.count / 2) - 1
        let right = arr.count / 2

        return Double(arr[left] + arr[right]) / 2

    } else {
        return Double(arr[arr.count / 2])
    }

}


// MARK: - Play

let result = findMedianSortedArrays(nums1, nums2) == output
print("result :", result)


// MARK: - Best practice

// func findMedianSortedArrays(_ n1: [Int], _ n2: [Int]) -> Double {
//     let ln1 = n1.count, ln2 = n2.count
//     var arr = [Int](repeating: 0, count: ln1 + ln2)
//     var val = (a: ln1 - 1, b: ln2 - 1, c: ln1 + ln2 - 1)
//
//     while val.c >= 0 {
//         if val.b < 0 || val.a >= 0 && n1[val.a] > n2[val.b] {
//             arr[val.c] = n1[val.a]
//             val.a = (val.a - 1)
//         } else {
//             arr[val.c] = n2[val.b]
//             val.b = (val.b - 1)
//         }
//         val.c = val.c - 1
//     }
//     let half = arr.count / 2, mid = arr[half]
//     return half % 2 == 0 ? .init(arr[half-1] + mid) / 2 : .init(mid)
// }
