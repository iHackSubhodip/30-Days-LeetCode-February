/*
 Question - Valid Anagram
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/585/week-2-february-8th-february-14th/3636/
 */

class Solution {
  func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else{ return false }
    var bucket = Array(repeating: 0,count: 26)
    let base = Int("a".unicodeScalars.first!.value)
    s.unicodeScalars.forEach{ scalar in
      bucket[Int(scalar.value)-base] += 1
    }
    for scalar in t.unicodeScalars{
      if bucket[Int(scalar.value)-base] == 0 { return false }
      bucket[Int(scalar.value)-base] -= 1
    }
    return true
  }
}
