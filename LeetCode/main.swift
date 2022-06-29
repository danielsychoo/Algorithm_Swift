//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/06/28.
//

// MARK: - Description

/*
 1232. Check If It Is a Straight Line
 
 You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane.
 배열 좌표(좌표[i] = [x, y])가 제공되며 여기서 [x, y]는 점의 좌표를 나타냅니다. 이 점이 XY 평면에서 직선을 이루는지 확인하세요.

 Example 1:
 Input: coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
 Output: true
 
 Example 2:
 Input: coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
 Output: false
*/


// MARK: - Inputs

// example 1
// let coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
// let output = true

// example 2
// let coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
// let output = false

// example 3
// let coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
// let output = false

// example 4
let coordinates = [[2,4],[2,5],[2,8]]
let output = true


// MARK: - My Solution

/*
 Runtime: 35ms(100.00%)
 Memory: 14.5MB(9.62%)
 */

func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    // edgeCase
    if coordinates.count == 1 { return false }
    if coordinates.count == 2 { return true }
    
    let firstX = coordinates[0][0]
    let firstY = coordinates[0][1]
    let xDist = coordinates[1][0] - firstX
    let yDist = coordinates[1][1] - firstY
    
    for i in 1 ... coordinates.count - 1 {
        let x = coordinates[i][0]
        let y = coordinates[i][1]
        
        if xDist * (y - firstY) != yDist * (x - firstX) { return false } /// 0 또는 음수일 경우를 위해 곱함
    }
    
    return true

    
    // (x2-x1)*(y1-y0) = (x1-x0)(y2-y1)
}


// MARK: - Play

let result = checkStraightLine(coordinates) == output
print("result :", result)


// MARK: - Best practice
