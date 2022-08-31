//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/08/31.
//

// MARK: - Description

/*
 111. Minimum Depth of Binary Tree
 
 Given a binary tree, find its minimum depth.

 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

 Note: A leaf is a node with no children.
 
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
 
 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: 2
 
 Example 2:
 Input: root = [2,null,3,null,4,null,5,null,6]
 Output: 5
 */


// MARK: - Inputs


// MARK: - My Solution

/*
 */

// func minDepth(_ root: TreeNode?) -> Int {
//     guard let root = root else { return 0 }
//
//     var minDepth: Int = 100000
//     var depth = 1
//     var nodeList = [root]
//
//     while !nodeList.isEmpty {
//         for i in 0 ..< nodeList.count {
//             let currentNode = nodeList.removeFirst()
//
//             if currentNode.left == nil && currentNode.right == nil { minDepth = min(depth, minDepth) }
//             if let leftChildNode = currentNode.left { nodeList.append(leftChildNode) }
//             if let rightChildNode = currentNode.right { nodeList.append(rightChildNode) }
//         }
//
//         depth += 1
//     }
//
//     return minDepth
// }


// MARK: - Play

// let result = tictactoe(moves) == output
// print("value:", tictactoe(moves))
// print("result:", result)


// MARK: - Best practice



