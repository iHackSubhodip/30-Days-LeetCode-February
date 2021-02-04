/*
 Question - Longest Harmonious Subsequence
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3628/
 */

class Solution {
  func findLHS(_ nums: [Int]) -> Int {
    var dict = [Int:Int]()
    for n in nums {
      dict[n] = (dict[n] ?? 0) + 1
    }
    
    var sub = 0
    
    for (k, v) in dict {
      let less = (dict[k + 1] ?? 0), more = (dict[k - 1] ?? 0)
      
      if less != 0 || more != 0 {
        sub = max(sub, max(less, more) + v)
      }
      
    }
    
    return sub
  }
}
