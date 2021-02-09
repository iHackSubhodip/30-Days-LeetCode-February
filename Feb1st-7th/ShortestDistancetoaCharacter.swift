/*
 Question - Shortest Distance to a Character
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3631/
 */

class Solution {
  func shortestToChar(_ S: String, _ C: Character) -> [Int] {
    var res = Array(repeating: 0, count: S.count)
    let n = S.count
    var pos = -n
    
    for i in 0..<n {
      let index = S.index(S.startIndex, offsetBy: i)
      if S[index] == C {
        pos = i
      }
      res[i] = i - pos
    }
    
    for i in (0..<n).reversed() {
      let index = S.index(S.startIndex, offsetBy: i)
      if S[index] == C {
        pos  = i
      }
      res[i] = min(res[i], abs(pos - i))
    }
    
    return res
  }
}
