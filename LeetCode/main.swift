//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/08.
//

// MARK: - Description

/*
 2363. Merge Similar Items
 
 You are given two 2D integer arrays, items1 and items2, representing two sets of items. Each array items has the following properties:

 - items[i] = [valuei, weighti] where valuei represents the value and weighti represents the weight of the ith item.
 - The value of each item in items is unique.
 
 Return a 2D integer array ret where ret[i] = [valuei, weighti], with weighti being the sum of weights of all items with value valuei.

 Note: ret should be returned in ascending order by value.
 
 ---
 
 두 개의 항목 집합을 나타내는 두 개의 2D 정수 배열 items1 및 items2가 제공됩니다. 각 배열 항목에는 다음과 같은 속성이 있습니다.
 
 - items[i] = [valuei, weighti] 여기서 valuei는 값을 나타내고 weighti는 i번째 항목의 가중치를 나타냅니다.
 - 항목에 있는 각 항목의 값은 고유합니다.
 
 ret[i] = [valuei, weighti]인 2D 정수 배열 ret를 반환합니다. 여기서 weighti는 valuei 값을 가진 모든 항목의 가중치 합입니다.
 
 참고: ret는 값에 따라 오름차순으로 반환되어야 합니다.
 
 Example 1:
 Input: items1 = [[1,1],[4,5],[3,8]], items2 = [[3,1],[1,5]]
 Output: [[1,6],[3,9],[4,5]]
 Explanation:
 The item with value = 1 occurs in items1 with weight = 1 and in items2 with weight = 5, total weight = 1 + 5 = 6.
 The item with value = 3 occurs in items1 with weight = 8 and in items2 with weight = 1, total weight = 8 + 1 = 9.
 The item with value = 4 occurs in items1 with weight = 5, total weight = 5.
 Therefore, we return [[1,6],[3,9],[4,5]].
 
 Example 2:
 Input: items1 = [[1,1],[3,2],[2,3]], items2 = [[2,1],[3,2],[1,3]]
 Output: [[1,4],[2,4],[3,4]]
 Explanation:
 The item with value = 1 occurs in items1 with weight = 1 and in items2 with weight = 3, total weight = 1 + 3 = 4.
 The item with value = 2 occurs in items1 with weight = 3 and in items2 with weight = 1, total weight = 3 + 1 = 4.
 The item with value = 3 occurs in items1 with weight = 2 and in items2 with weight = 2, total weight = 2 + 2 = 4.
 Therefore, we return [[1,4],[2,4],[3,4]].
 
 Example 3:
 Input: items1 = [[1,3],[2,2]], items2 = [[7,1],[2,2],[1,4]]
 Output: [[1,7],[2,4],[7,1]]
 Explanation:
 The item with value = 1 occurs in items1 with weight = 3 and in items2 with weight = 4, total weight = 3 + 4 = 7.
 The item with value = 2 occurs in items1 with weight = 2 and in items2 with weight = 2, total weight = 2 + 2 = 4.
 The item with value = 7 occurs in items2 with weight = 1, total weight = 1.
 Therefore, we return [[1,7],[2,4],[7,1]].
 */



// MARK: - Inputs

// example 1
// let items1 = [[1,1],[4,5],[3,8]]
// let items2 = [[3,1],[1,5]]
// let output = [[1,6],[3,9],[4,5]]

// example 2
// let items1 = [[1,1],[3,2],[2,3]]
// let items2 = [[2,1],[3,2],[1,3]]
// let output = [[1,4],[2,4],[3,4]]

// example 3
let items1 = [[1,3],[2,2]]
let items2 = [[7,1],[2,2],[1,4]]
let output = [[1,7],[2,4],[7,1]]


// MARK: - My Solution

/*
 */

func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
    var dict: [Int:Int] = [:]

    items1.forEach { item in
        if dict[item[0]] != nil { dict[item[0]]! += item[1] }
        else { dict[item[0]] = item[1] }
    }

    items2.forEach { item in
        if dict[item[0]] != nil { dict[item[0]]! += item[1] }
        else { dict[item[0]] = item[1] }
    }

    return dict.keys.sorted().map { [$0, dict[$0]!] }
}

// func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
//     var dict: [Int:Int] = [:]
//
//     items1.forEach { item in
//         let key = item[0], value = item[1]
//         if dict[key] != nil { dict[key]! += value }
//         else { dict[key] = value }
//     }
//
//     items2.forEach { item in
//         let key = item[0], value = item[1]
//         if dict[key] != nil { dict[key]! += value }
//         else { dict[key] = value }
//     }
//
//     let result = dict.keys.sorted().map { [$0, dict[$0]!] }
//     return result
// }


// MARK: - Play

let result = mergeSimilarItems(items1, items2) == output
print("value:", mergeSimilarItems(items1, items2))
print("result:", result)


// MARK: - Best practice

