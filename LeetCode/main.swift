//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/08.
//

// MARK: - Description

/*
 872. Leaf-Similar Trees
 
 Consider all the leaves of a binary tree, from left to right order, the values of those leaves form a leaf value sequence.
 
 For example, in the given tree above, the leaf value sequence is (6, 7, 4, 9, 8).

 Two binary trees are considered leaf-similar if their leaf value sequence is the same.

 Return true if and only if the two given trees with head nodes root1 and root2 are leaf-similar.
 
 ---
 
 Example 1:
 Input: root1 = [3,5,1,6,2,9,8,null,null,7,4], root2 = [3,5,1,6,7,4,2,null,null,null,null,null,null,9,8]
 Output: true
 
 Example 2:
 Input: root1 = [1,2,3], root2 = [1,3,2]
 Output: false
 */


// MARK: - Inputs

// example 1
// let root1 = [3,5,1,6,2,9,8,null,null,7,4]
// let root2 = [3,5,1,6,7,4,2,null,null,null,null,null,null,9,8]
// let output = true

// example 2
// let root1 = [1,2,3]
// let root2 = [1,3,2]
// let output = false


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

// func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
//     var list1: [Int] = []
//     getLeafVal(root1, &list1)
//
//     var list2: [Int] = []
//     getLeafVal(root2, &list2)
//
//     return list1 == list2
// }
//
// func getLeafVal(_ tree: TreeNode?, _ list: inout [Int]) {
//     guard let tree = tree else { return }
//
//     if tree.left == nil && tree.right == nil { list.append(tree.val) }
//     if tree.left != nil { getLeafVal(tree.left, &list) }
//     if tree.right != nil { getLeafVal(tree.right, &list) }
//
//     return
// }


// MARK: - Play

// let result = leafSimilar(root, root2) == output
// print("value:", leafSimilar(root, root2))
// print("result:", result)


// MARK: - Best practice




