//
//  Created by sungyeopTW on 2022/05/13.
//


// MARK: - Description

/*
 3. Longest Substring Without Repeating Characters
 
 Given a string s, find the length of the longest substring without repeating characters.
 
 Example 1:
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 
 Example 2:
 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 
 Example3:
 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */


// MARK: - Inputs

// example 1
// var s = "abcabcbb"
// let output = 3

// example 2
// var s = "bbbbb"
// let output = 1

// example 3
// var s = "dvdf"
// let output = 3

// example 4
// var s = "au"
// let output = 2

// example 5
// var s = "pwwkew"
// let output = 3

// edge 1
// var s = " "
// let output = 1

// edge 2
// var s = ""
// let output = 0


// MARK: - My Solution

// 못품..


// MARK: - Play

// let result = lengthOfLongestSubstring(s) == output
// print("result :", result)


// MARK: - Best practice

// - Complexity:
//   - time: O(n)

/*
 - 주석[1]
 (Array.firstIndex(of element:) -- https://developer.apple.com/documentation/swift/array/2994720-firstindex)
 (문자열 문자 단위로 다루기 -- http://seorenn.blogspot.com/2018/05/swift-string-index.html)
 Array.firstIndex를 이용해 chars 내부에서 char의 첫 번째 index를 optionalBinding으로 가져오고,
    optionalBinding이 통과하면 해당 index+1 부터 끝까지로 Array 재생성해서 chars에 재할당
    
 결과적으로 중복된 char 이후부터의 array가 재생성됨으로서 substring 비교
 */

func lengthOfLongestSubstring(_ s: String) -> Int {
    var max = 0
    var chars: [Character] = []
    
    let arr = Array(s)
    let length = s.count
    
    for i in 0..<length {
        let char = arr[i]
        
        if let same_char_index = chars.firstIndex(of: char) { chars = Array(chars[(same_char_index+1)..<chars.count]) } /// 주석[1]
        chars.append(char)
        max = chars.count > max ? chars.count : max
    }

    return max
}
