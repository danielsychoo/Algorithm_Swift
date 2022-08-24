//
//  main.swift
//  Algorithm_Swift
//
//  Created by sungyeopTW on 2022/08/24.
//

// MARK: - Description

/*
 1275. Find Winner on a Tic Tac Toe Game
 
 Tic-tac-toe is played by two players A and B on a 3 x 3 grid. The rules of Tic-Tac-Toe are:
 
 - Players take turns placing characters into empty squares ' '.
 - The first player A always places 'X' characters, while the second player B always places 'O' characters.
 - 'X' and 'O' characters are always placed into empty squares, never on filled ones.
 - The game ends when there are three of the same (non-empty) character filling any row, column, or diagonal.
 - The game also ends if all squares are non-empty.
 - No more moves can be played if the game is over.
 
 Given a 2D integer array moves where moves[i] = [rowi, coli] indicates that the ith move will be played on grid[rowi][coli].
 return the winner of the game if it exists (A or B). In case the game ends in a draw return "Draw".
 If there are still movements to play return "Pending".

 You can assume that moves is valid (i.e., it follows the rules of Tic-Tac-Toe), the grid is initially empty, and A will play first.
 
 ---
 Tic-tac-toe는 3 x 3 그리드에서 두 명의 플레이어 A와 B가 플레이합니다. Tic-Tac-Toe의 규칙은 다음과 같습니다.
 
 - 플레이어는 번갈아 가며 빈 사각형 ' '에 캐릭터를 배치합니다.
 - 첫 번째 플레이어 A는 항상 'X' 문자를 배치하고 두 번째 플레이어 B는 항상 'O' 문자를 배치합니다.
 - 'X' 및 'O' 문자는 채워진 사각형이 아닌 항상 빈 사각형에 배치됩니다.
 - 행, 열 또는 대각선을 채우는 동일한(비어 있지 않은) 문자가 3개 있으면 게임이 종료됩니다.
 - 모든 사각형이 비어 있지 않은 경우에도 게임이 종료됩니다.
 - 게임이 끝나면 더 이상 이동할 수 없습니다.
 
 2D 정수 배열이 move[i] = [rowi, coli]인 경우 i번째 이동이 grid[rowi][coli]에서 재생됨을 나타냅니다.
 게임의 승자가 존재하는 경우(A 또는 B) 반환합니다. 게임이 무승부로 끝나면 "무승부"를 반환합니다.
 재생할 움직임이 아직 있으면 "보류 중"으로 돌아갑니다.
 
 이동이 유효하고(즉, Tic-Tac-Toe 규칙을 따릅니다) 그리드가 처음에는 비어 있고 A가 먼저 재생된다고 가정할 수 있습니다.
 
 
 Example 1:
 Input: moves = [[0,0],[2,0],[1,1],[2,1],[2,2]]
 Output: "A"
 Explanation: A wins, they always play first.
 
 Example 2:
 Input: moves = [[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]
 Output: "B"
 Explanation: B wins.
 
 Example 3:
 Input: moves = [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]
 Output: "Draw"
 Explanation: The game ends in a draw since there are no moves to make.
 */


// MARK: - Inputs

// example 1
// let moves = [[0,0],[2,0],[1,1],[2,1],[2,2]]
// let output = "A"

// example 2
// let moves = [[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]
// let output = "B"

// example 3
// let moves = [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]
// let output = "Draw"

// example 4
// let moves = [[1,2],[2,1],[1,0],[0,0],[0,1],[2,0],[1,1]]
// let output = "A"

// example 5
let moves = [[0,0],[1,1],[2,2],[1,0],[1,2],[0,2],[2,1],[0,1],[2,0]]
let output = "A"

// MARK: - My Solution

/*
 */

enum Result: String {
    case a = "A"
    case b = "B"
    case draw = "Draw"
    case pending = "Pending"
}

let winningCases = [ /// 이기는 경우
    [[0,0], [0,1], [0,2]], [[1,0], [1,1], [1,2]], [[2,0], [2,1], [2,2]], /// 가로
    [[0,0], [1,0], [2,0]], [[0,1], [1,1], [2,1]], [[0,2], [1,2], [2,2]], /// 세로
    [[0,0], [1,1], [2,2]], [[0,2], [1,1], [2,0]] /// 대각선
]

func tictactoe(_ moves: [[Int]]) -> String {
    var playerA: [[Int]] = []
    var playerB: [[Int]] = []
    for (index, move) in moves.enumerated() {
        if index % 2 == 0 { playerA.append(move) }
        else { playerB.append(move) }
    }
    
    for `case` in winningCases {
        var countA = 0
        var countB = 0
        for point in playerA {
            if let _ = `case`.first(where: { $0 == point}) { countA += 1 }
            if countA == 3 { return Result.a.rawValue }
        }
        
        for point in playerB {
            if let _ = `case`.first(where: { $0 == point}) { countB += 1 }
            if countB == 3 { return Result.b.rawValue }
        }
    }
    
    if moves.count == 9 { return Result.draw.rawValue }
    else { return Result.pending.rawValue }
}


// MARK: - Play

let result = tictactoe(moves) == output
print("value:", tictactoe(moves))
print("result:", result)


// MARK: - Best practice


