//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/05.
//

// MARK: - Description

/*
 617. Merge Two Binary Trees
 
 You are given two binary trees root1 and root2.

 Imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
 You need to merge the two trees into a new binary tree.
 The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node.
 Otherwise, the NOT null node will be used as the node of the new tree.

 Return the merged tree.

 Note: The merging process must start from the root nodes of both trees.
 
 ---
 
 두 개의 이진 트리 root1과 root2가 제공됩니다.
 
 그들 중 하나를 다른 하나를 덮기 위해 배치할 때 두 트리의 일부 노드는 겹치고 다른 노드는 겹치지 않는다고 상상해보십시오.
 두 트리를 새로운 이진 트리로 병합해야 합니다.
 병합 규칙은 두 노드가 겹치면 노드 값을 합산하여 병합된 노드의 새 값으로 합산하는 것입니다.
 그렇지 않으면 NOT null 노드가 새 트리의 노드로 사용됩니다.
 
 병합된 트리를 반환합니다.
 
 참고: 병합 프로세스는 두 트리의 루트 노드에서 시작해야 합니다.
 
 Example 1:
 Input: root1 = [1,3,2,5], root2 = [2,1,3,null,4,null,7]
 Output: [3,4,5,5,4,null,7]
 
 Example 2:
 Input: root1 = [1], root2 = [1,2]
 Output: [2,2]
 */


// MARK: - Inputs

// example 1
// let root1 = [1,3,2,5]
// let root2 = [2,1,3,null,4,null,7]
// let output = [3,4,5,5,4,null,7]

// example 2
// let root1 = [1]
// let root2 = [1,2]
// let output = [2,2]


// MARK: - My Solution

/*
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
    
}


// MARK: - Play

// let result = arraySign(nums) == output
// print("value:", arraySign(nums))
// print("result:", result)


// MARK: - Best practice

