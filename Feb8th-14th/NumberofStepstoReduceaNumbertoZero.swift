/*
 Question - Number of Steps to Reduce a Number to Zero
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/585/week-2-february-8th-february-14th/3637/
 */

class Solution {
  func numberOfSteps (_ num: Int) -> Int {
    var steps: Int = 0, num = num
    while num != 0{
      num = num % 2 == 0 ? num/2 : num-1
      steps += 1
    }
    return steps
  }
}
