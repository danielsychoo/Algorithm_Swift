//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/06/29.
//

// MARK: - Description

/*
 1252. Cells with Odd Values in a Matrix
 
 There is an m x n matrix that is initialized to all 0's. There is also a 2D array indices where each indices[i] = [ri, ci] represents a 0-indexed location to perform some increment operations on the matrix.

 For each location indices[i], do both of the following:

 Increment all the cells on row ri.
 Increment all the cells on column ci.
 Given m, n, and indices, return the number of odd-valued cells in the matrix after applying the increment to all locations in indices.

 Example 1:
 Input: m = 2, n = 3, indices = [[0,1],[1,1]]
 Output: 6
 Explanation: Initial matrix = [[0,0,0],[0,0,0]].
 After applying first increment it becomes [[1,2,1],[0,1,0]].
 The final matrix is [[1,3,1],[1,3,1]], which contains 6 odd numbers.
 
 Example 2:
 Input: m = 2, n = 2, indices = [[1,1],[0,0]]
 Output: 0
 Explanation: Final matrix = [[2,2],[2,2]]. There are no odd numbers in the final matrix.
*/


// MARK: - Inputs

// example 1
// let m = 2
// let n = 3
// let indices = [[0,1],[1,1]]
// let output = 6

// example 2
// let m = 2
// let n = 2
// let indices = [[1,1],[0,0]]
// let output = 6


// MARK: - My Solution

/*
 Runtime: 17ms(25.00%)
 Memory: 13.6MB(100.00%)
 */

/*
 1. n x m 크기의 matrix만들고 0으로 채움
 2. indices에 맞추어 1씩 크기증가
 3. 전체 돌며 홀수의 갯수 확인 후 리턴
 */

func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
    let inner = [Int](repeating: 0, count: n)
    var matrix = [[Int]](repeating: inner, count: m)
    
    for item in indices {
        let r = item[0]
        let c = item[1]
        
        matrix[r] = matrix[r].map { $0 + 1 }
        
        for i in 0 ..< matrix.count {
            matrix[i][c] += 1
        }
    }
    
    var result = 0
    
    for item in matrix {
        result += item.filter { $0 % 2 != 0 }.count
    }
    
    return result
}


// MARK: - Play

// let result = oddCells(m, n, indices) == output
// print("result :", result)


// MARK: - Best practice

