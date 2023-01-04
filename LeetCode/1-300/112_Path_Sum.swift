//
//  Created by sungyeopTW on 2023/01/03.
//

// MARK: - Description

/*
 112. Path Sum
 
 Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.

 A leaf is a node with no children.
 
 Example 1:
 Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
 Output: true
 Explanation: The root-to-leaf path with the target sum is shown.
 
 Example 2:
 Input: root = [1,2,3], targetSum = 5
 Output: false
 Explanation: There two root-to-leaf paths in the tree:
 (1 --> 2): The sum is 3.
 (1 --> 3): The sum is 4.
 There is no root-to-leaf path with sum = 5.
 
 Example 3:
 Input: root = [], targetSum = 0
 Output: false
 Explanation: Since the tree is empty, there are no root-to-leaf paths.
 */


// MARK: - Inputs

// example 1
// let root = [5,4,8,11,nil,13,4,7,2,nil,nil,nil,1]
// let targetSum = 22
// let output = true

// example 2
// let root = [1,2,3]
// let targetSum = 5
// let output = false

// example 3
// let root = [],
// let targetSum = 0
// let output = false


// MARK: - My Solution

// public class TreeNode {
//     public var val: Int
//     public var left: TreeNode?
//     public var right: TreeNode?
//     public init() { self.val = 0; self.left = nil; self.right = nil; }
//     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//         self.val = val
//         self.left = left
//         self.right = right
//     }
// }
//
// let tree1: TreeNode = .init(1)
// let tree2: TreeNode = .init(2)
// let tree3: TreeNode = .init(3)
// let tree4: TreeNode = .init(4)
// let tree5: TreeNode = .init(5)
// let tree6: TreeNode = .init(6)
// let tree7: TreeNode = .init(7)
// let tree8: TreeNode = .init(8)
// let tree9: TreeNode = .init(9)
// let tree10: TreeNode = .init(10)
// let tree11: TreeNode = .init(11)
// let tree12: TreeNode = .init(12)
// let tree13: TreeNode = .init(13)
//
// let root = tree5
// root.left = tree4
// root.left?.left = tree11
// root.left?.left?.left = tree7
// root.left?.left?.right = tree2
//
// root.right = tree8
// root.right?.left = tree13
// root.right?.right = tree4
// root.right?.right?.right = tree1
//
// func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
//     guard let root = root else { return false }
//
//     let isLeaf = root.left == nil && root.right == nil
//     if root.val == targetSum && isLeaf { return true }
//
//     let nextTarget = targetSum - root.val
//     return hasPathSum(root.left, nextTarget) || hasPathSum(root.right, nextTarget)
// }


// MARK: - Play

// let result = hasPathSum(root, targetSum) == output
// print("value:", hasPathSum(root, targetSum))
// print("result:", result)


// MARK: - Best practice

