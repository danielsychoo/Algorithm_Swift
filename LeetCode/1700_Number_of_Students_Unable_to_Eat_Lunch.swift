//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/07/02.
//

// MARK: - Description

/*
 1700. Number of Students Unable to Eat Lunch
 
 The school cafeteria offers circular and square sandwiches at lunch break, referred to by numbers 0 and 1 respectively. All students stand in a queue. Each student either prefers square or circular sandwiches.

 The number of sandwiches in the cafeteria is equal to the number of students. The sandwiches are placed in a stack. At each step:

 If the student at the front of the queue prefers the sandwich on the top of the stack, they will take it and leave the queue.
 Otherwise, they will leave it and go to the queue's end.
 This continues until none of the queue students want to take the top sandwich and are thus unable to eat.

 You are given two integer arrays students and sandwiches where sandwiches[i] is the type of the i​​​​​​th sandwich in the stack (i = 0 is the top of the stack) and students[j] is the preference of the j​​​​​​th student in the initial queue (j = 0 is the front of the queue). Return the number of students that are unable to eat.
 
 Example 1:
 Input: students = [1,1,0,0], sandwiches = [0,1,0,1]
 Output: 0
 Explanation:
 - Front student leaves the top sandwich and returns to the end of the line making students = [1,0,0,1].
 - Front student leaves the top sandwich and returns to the end of the line making students = [0,0,1,1].
 - Front student takes the top sandwich and leaves the line making students = [0,1,1] and sandwiches = [1,0,1].
 - Front student leaves the top sandwich and returns to the end of the line making students = [1,1,0].
 - Front student takes the top sandwich and leaves the line making students = [1,0] and sandwiches = [0,1].
 - Front student leaves the top sandwich and returns to the end of the line making students = [0,1].
 - Front student takes the top sandwich and leaves the line making students = [1] and sandwiches = [1].
 - Front student takes the top sandwich and leaves the line making students = [] and sandwiches = [].
 Hence all students are able to eat.
 
 Example 2:
 Input: students = [1,1,1,0,0,1], sandwiches = [1,0,0,0,1,1]
 Output: 3
 */


// MARK: - Inputs

// example 1
// let students = [1, 1, 0, 0]
// let sandwiches = [0, 1, 0, 1]
// let output = 0

// example 2
// let students = [1, 1, 1, 0, 0, 1]
// let sandwiches = [1, 0, 0, 0, 1, 1]
// let output = 3


// MARK: - My Solution

/*
 1. 첫 번째 index부터 두 배열의 값이 같은지 확인
 2. 다르면 sandwiches[0]과 같은 값이 나올 때 까지 students의 위치를 넘김
 3. 같으면 다를 때 까지 상쇄
 4. 다시 2의 과정 ㄱㄱ
 5. 결국 남은 students의 수를 반환
 */

// func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
//     var studentList = students
//     var sandwichList = sandwiches
//
//     var remain = students.count
//     var rollCount = 0
//
//     while true {
//         if studentList[0] == sandwichList[0] {
//             rollCount = 0
//             pickSandwich(&studentList, &sandwichList)
//             remain -= 1
//         } else {
//             rollStudents(&studentList)
//             rollCount += 1
//         }
//
//         if remain == 0 || rollCount > remain { return remain } // 탈출조건
//     }
// }
//
// func pickSandwich(_ studentList: inout [Int], _ sandwichList: inout [Int]) { // 상쇄
//     studentList.remove(at: 0)
//     sandwichList.remove(at: 0)
// }
//
// func rollStudents(_ studentList: inout [Int]) { // 돌림
//     studentList.append(studentList[0])
//     studentList.remove(at: 0)
// }


// MARK: - Play

// let result = countStudents(students, sandwiches) == output
// print("result :", result)


// MARK: - Best practice

