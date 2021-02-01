/*
 Question - Squirrel Simulation
 Link - > https://leetcode.com/explore/featured/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3624/
 */

class Solution {
  func minDistance(_ height: Int, _ width: Int, _ tree: [Int], _ squirrel: [Int], _ nuts: [[Int]]) -> Int {
    var toDist = 0, d = Int.min
    
    for nut in nuts{
      toDist += (distance(nut, tree) * 2)
      d = max(d, distance(nut, tree) - distance(nut, squirrel))
    }
    return toDist - d
  }
  
  func distance(_ a: [Int],_ b: [Int]) -> Int{
    return abs(a[0] - b[0]) + abs(a[1] - b[1])
  }
}
