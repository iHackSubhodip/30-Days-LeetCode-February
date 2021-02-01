/*
 Question - Number of 1 Bits
 Link - > https://leetcode.com/explore/featured/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3625/
 */

class Solution {
  func hammingWeight(_ n: Int) -> Int {
    var count = 0
    var n = n
    
    while n > 0 {
      n &= n - 1
      count += 1
    }
    
    return count
  }
}
