//
//  Created by sungyeopTW on 2022/12/27.
//

// MARK: - Description

/*
 83. Remove Duplicates from Sorted List
 
 Given the head of a sorted linked list, delete all duplicates such that each element appears only once.
 Return the linked list sorted as well.
 
 Example 1:
 Input: head = [1,1,2]
 Output: [1,2]
 
 Example 2:
 Input: head = [1,1,2,3,3]
 Output: [1,2,3]
 */


// MARK: - Inputs

// example 1
// let head = [1,1,2]
// let output = [1,2]

// example 2
// let head = [1,1,2,3,3]
// let output = [1,2,3]


// MARK: - My Solution

// public class ListNode {
//     public var val: Int
//     public var next: ListNode?
//     public init() { self.val = 0; self.next = nil; }
//     public init(_ val: Int) { self.val = val; self.next = nil; }
//     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
// }

// func deleteDuplicates(_ head: ListNode?) -> ListNode? {
//     guard let head = head else { return nil }
//
//     var node = head
//
//     while node.next != nil {
//
//         if node.val == node.next?.val {
//             node.next = node.next?.next
//         } else {
//             node = node.next!
//         }
//     }
//
//     return head
// }


// MARK: - Play

// let result = deleteDuplicates(head) == output
// print("value:", deleteDuplicates(head))
// print("result:", result)


// MARK: - Best practice
