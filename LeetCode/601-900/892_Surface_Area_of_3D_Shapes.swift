//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/24.
//

// MARK: - Description

/*
 892. Surface Area of 3D Shapes
 
 You are given an n x n grid where you have placed some 1 x 1 x 1 cubes. Each value v = grid[i][j] represents a tower of v cubes placed on top of cell (i, j).

 After placing these cubes, you have decided to glue any directly adjacent cubes to each other, forming several irregular 3D shapes.

 Return the total surface area of the resulting shapes.

 Note: The bottom face of each shape counts toward its surface area.
 
 Example 1:
 Input: grid = [[1,2],[3,4]]
 Output: 34
 
 Example 2:
 Input: grid = [[1,1,1],[1,0,1],[1,1,1]]
 Output: 32
 
 Example 3:
 Input: grid = [[2,2,2],[2,1,2],[2,2,2]]
 Output: 46
 */


// MARK: - Inputs

// example 1
// let grid = [[1,2],[3,4]]
// let output = 34

// example 2
// let grid = [[1,1,1],[1,0,1],[1,1,1]]
// let output = 32

// example 3
// let grid = [[2,2,2],[2,1,2],[2,2,2]]
// let output = 46


// MARK: - My Solution

/*
 1. 우선 다 더하고 겹쳐지는더 낮은 면 2개씩 뺌
 */

// func surfaceArea(_ grid: [[Int]]) -> Int {
//     var count: Int = 0
//
//     (0 ..< grid.count).forEach { row in
//         (0 ..< grid.count).forEach { column in
//             let current = grid[row][column]
//
//             if grid[row][column] > 0 {
//                 count += (current * 4) + 2
//             }
//
//             if row > 0 {
//                 let beforeRow = grid[row - 1][column]
//                 count -= min(beforeRow, current) * 2
//             }
//
//             if column > 0 {
//                 let beforeColumn = grid[row][column-1]
//                 count -= min(beforeColumn, current) * 2
//             }
//         }
//     }
//
//     return count
// }

// func surfaceArea(_ grid: [[Int]]) -> Int {
//     var count: Int = 0
//
//     (0 ..< grid.count).forEach { row in
//         (0 ..< grid.count).forEach { column in
//             if grid[row][column] > 0 { count += 2 + (grid[row][column] * 4) }
//             if row > 0 { count -= min(grid[row-1][column], grid[row][column]) * 2 }
//             if column > 0 { count -= min(grid[row][column-1], grid[row][column]) * 2 }
//         }
//     }
//
//     return count
// }


// MARK: - Play

// let result = surfaceArea(grid) == output
// print("result :", result)


// MARK: - Best practice


