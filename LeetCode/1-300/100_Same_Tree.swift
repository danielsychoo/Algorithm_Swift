//
//  Created by sungyeopTW on 2022/12/27.
//

// MARK: - Description

/*
 100. Same Tree
 
 Given the roots of two binary trees p and q, write a function to check if they are the same or not.
 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.
 
 Example 1:
 Input: p = [1,2,3], q = [1,2,3]
 Output: true
 
 Example 2:
 Input: p = [1,2], q = [1,null,2]
 Output: false
 
 Example 3:
 Input: p = [1,2,1], q = [1,1,2]
 Output: false
 */


// MARK: - Inputs

// example 1
// let p = [1,2,3]
// let q = [1,2,3]
// let output = true

// example 2
// let p = [1,2]
// let q = [1,nil,2]
// let output = false

// example 3
// let p = [1,2,1]
// let q = [1,1,2]
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

// let tree1: TreeNode = .init(1)
// let tree2: TreeNode = .init(2)
// let tree3: TreeNode = .init(3)
//
// let p: TreeNode = .init(1, tree2, tree1)
// let q: TreeNode = .init(1, tree1, tree2)

// func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
//
//     var pArr: [Int] = []
//     var qArr: [Int] = []
//     seekDeeper(p, &pArr)
//     seekDeeper(q, &qArr)
//
//     return pArr == qArr
// }
//
// func seekDeeper(_ node: TreeNode?,_ arr: inout [Int]) {
//
//     arr.append(node?.val ?? -1)
//
//     if node?.left != nil { seekDeeper(node?.left, &arr) }
//     else { arr.append(-5) }
//     if node?.right != nil { seekDeeper(node?.right, &arr) }
//     else { arr.append(-5) }
// }


// MARK: - Play

// let result = isSameTree(p, q) == output
// print("value:", isSameTree(p, q))
// print("result:", result)


// MARK: - Best practice
