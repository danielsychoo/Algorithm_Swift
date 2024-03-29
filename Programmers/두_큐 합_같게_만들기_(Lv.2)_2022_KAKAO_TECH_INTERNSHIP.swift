//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/09/14.
//

// MARK: - Description

/*
 두 큐 합 같게 만들기 (Lv.2) -- 2022 KAKAO TECH INTERNSHIP
 
 길이가 같은 두 개의 큐가 주어집니다.
 하나의 큐를 골라 원소를 추출(pop)하고, 추출된 원소를 다른 큐에 집어넣는(insert) 작업을 통해 각 큐의 원소 합이 같도록 만들려고 합니다.
 이때 필요한 작업의 최소 횟수를 구하고자 합니다.
 한 번의 pop과 한 번의 insert를 합쳐서 작업을 1회 수행한 것으로 간주합니다.

 큐는 먼저 집어넣은 원소가 먼저 나오는 구조입니다.
 이 문제에서는 큐를 배열로 표현하며, 원소가 배열 앞쪽에 있을수록 먼저 집어넣은 원소임을 의미합니다.
 즉, pop을 하면 배열의 첫 번째 원소가 추출되며, insert를 하면 배열의 끝에 원소가 추가됩니다.
 예를 들어 큐 [1, 2, 3, 4]가 주어졌을 때, pop을 하면 맨 앞에 있는 원소 1이 추출되어 [2, 3, 4]가 되며, 이어서 5를 insert하면 [2, 3, 4, 5]가 됩니다.

 다음은 두 큐를 나타내는 예시입니다.
 
 queue1 = [3, 2, 7, 2]
 queue2 = [4, 6, 5, 1]
 
 두 큐에 담긴 모든 원소의 합은 30입니다. 따라서, 각 큐의 합을 15로 만들어야 합니다.
 예를 들어, 다음과 같이 2가지 방법이 있습니다.

 1. queue2의 4, 6, 5를 순서대로 추출하여 queue1에 추가한 뒤, queue1의 3, 2, 7, 2를 순서대로 추출하여 queue2에 추가합니다.
    그 결과 queue1은 [4, 6, 5], queue2는 [1, 3, 2, 7, 2]가 되며, 각 큐의 원소 합은 15로 같습니다. 이 방법은 작업을 7번 수행합니다.
 2. queue1에서 3을 추출하여 queue2에 추가합니다. 그리고 queue2에서 4를 추출하여 queue1에 추가합니다.
    그 결과 queue1은 [2, 7, 2, 4], queue2는 [6, 5, 1, 3]가 되며, 각 큐의 원소 합은 15로 같습니다. 이 방법은 작업을 2번만 수행하며, 이보다 적은 횟수로 목표를 달성할 수 없습니다.
    따라서 각 큐의 원소 합을 같게 만들기 위해 필요한 작업의 최소 횟수는 2입니다.

 길이가 같은 두 개의 큐를 나타내는 정수 배열 queue1, queue2가 매개변수로 주어집니다.
 각 큐의 원소 합을 같게 만들기 위해 필요한 작업의 최소 횟수를 return 하도록 solution 함수를 완성해주세요.
 단, 어떤 방법으로도 각 큐의 원소 합을 같게 만들 수 없는 경우, -1을 return 해주세요.
 */



// MARK: - Inputs

// example 1
// let queue1 = [3, 2, 7, 2]
// let queue2 = [4, 6, 5, 1]
// let result = 2

// example 2
// let queue1 = [1, 2, 1, 2]
// let queue2 = [1, 10, 1, 2]
// let result = 7

// example 3
// let queue1 = [1, 1]
// let queue2 = [1, 5]
// let result = -1

// example 4
// let queue1: [Int] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 10]
// let queue2: [Int] = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
// let result = -1


// MARK: - My Solution

/*
 1. 각 queue의 합을 더하고, 그 둘을 더해 총계를 구함
 2. 두 queue 중 값이 더 큰 queue에서 pop하고 다른 queue에 insert함
 3. 두 합이 같아질 때 까지 2번을 진행
 4. 이때, 진행의 횟수가 두 queue의 count를 넘어가면 -1 반환
 */

// import Foundation
//
// func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
//
//     var count = 0, max = queue1.count * 3
//     var queue1 = queue1, queue2 = queue2
//     var val1 = queue1.reduce(0) { $0 + $1 }, val2 = queue2.reduce(0) { $0 + $1 }
//     var pointer1 = 0, pointer2 = 0
//
//     while count < max {
//
//         if val1 > val2 { /// queue1이 더 큰 상황
//             val1 -= queue1[pointer1]
//             val2 += queue1[pointer1]
//             queue2.append(queue1[pointer1])
//             pointer1 += 1
//         } else if val1 < val2 { /// queue2가 더 큰 상황
//             val2 -= queue2[pointer2]
//             val1 += queue2[pointer2]
//             queue1.append(queue2[pointer2])
//             pointer2 += 1
//         } else { /// 둘이 같은 상황
//             return count
//         }
//
//         count += 1
//     }
//
//     return -1
// }

// MARK: - Play

// let output = solution(queue1, queue2) == result
// print("value:", solution(queue1, queue2))
// print("output:", output)


// MARK: - Best practice

