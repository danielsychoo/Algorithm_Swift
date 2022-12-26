//
//  Created by sungyeopTW on 2022/12/26.
//

// MARK: - Description

/*
 21. Merge Two Sorted Lists
 
 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.
 
 ---
 
 Example 1:
 Input: list1 = [1,2,4], list2 = [1,3,4]
 Output: [1,1,2,3,4,4]
 
 Example 2:
 Input: list1 = [], list2 = []
 Output: []
 
 Example 3:
 Input: list1 = [], list2 = [0]
 Output: [0]
 */


// MARK: - Inputs

// example 1
// let list1 = [1,2,4]
// let list2 = [1,3,4]
// let output = [1,1,2,3,4,4]

// example 2
// let list1 = []
// let list2 = []
// let output = []

// example 3
// let list1 = []
// let list2 = [0]
// let output = [0]

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

// class ListNode {
//     var val: Int
//     var next: ListNode?
//     init() { self.val = 0; self.next = nil; }
//     init(_ val: Int) { self.val = val; self.next = nil; }
//     init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
// }


// MARK: - My Solution

// func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//
//     var valueList: [Int] = []
//
//     var ls1 = list1
//     while ls1?.val != nil {
//         if let val = ls1?.val { valueList.append(val) }
//         ls1 = ls1?.next
//     }
//
//     var ls2 = list2
//     while ls2?.val != nil {
//         if let val = ls2?.val { valueList.append(val) }
//         ls2 = ls2?.next
//     }
//
//     return valueList.isEmpty ? nil : makeListNode(valueList.sorted())
// }
//
// private func makeListNode(_ valueList: [Int]) -> ListNode {
//
//     var list = valueList
//     var result: ListNode = .init(list.removeLast())
//
//     while list.isEmpty == false {
//         var temp: ListNode = .init(list.removeLast())
//         temp.next = result
//         result = temp
//     }
//
//     return result
// }

// MARK: - Play

// let result = mergeTwoLists(l1, l2) == output
// print("value:", mergeTwoLists(l1, l2))
// print("result:", result)


// MARK: - Best practice
