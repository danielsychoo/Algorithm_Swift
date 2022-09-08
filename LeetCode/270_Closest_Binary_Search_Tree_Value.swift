//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/08.
//

// MARK: - Description

/*
 270. Closest Binary Search Tree Value
 
 Given the root of a binary search tree and a target value, return the value in the BST that is closest to the target.
 
 ---
 
 Example 1:
 Input: root = [4,2,5,1,3], target = 3.714286
 Output: 4
 
 Example 2:
 Input: root = [1], target = 4.428571
 Output: 1
 */


// MARK: - Inputs

// example 1
// let root = [4,2,5,1,3]
// let target = 3.714286
// let output = 4

// example 2
// let root = [1]
// let target = 4.428571
// let output = 1


// MARK: - My Solution

/*
 */

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

// func closestValue(_ root: TreeNode?, _ target: Double) -> Int {
//     var result = 99999
//     move(root, target, &result)
//
//     return result
// }
//
// func move(_ node: TreeNode?, _ target: Double, _ result: inout Int) {
//     guard let node = node else { return }
//
//     result = findValue(target, node.val, result)
//
//     if node.left != nil { move(node.left, target, &result) }
//     if node.right != nil { move(node.right, target, &result) }
//
//     return
// }
//
// func findValue(_ target: Double, _ value: Int, _ result: Int) -> Int {
//     if (abs(target - Double(value)) >= abs(target - Double(result))) { return result }
//     else { return value }
// }


// MARK: - Play

// let result = closestValue(root, target) == output
// print("value:", closestValue(root, target))
// print("result:", result)


// MARK: - Best practice



