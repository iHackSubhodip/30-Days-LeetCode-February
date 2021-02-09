/*
 Question - Number of Distinct Islands
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/585/week-2-february-8th-february-14th/3632/
 */

class Solution {
  func numDistinctIslands(_ grid: [[Int]]) -> Int {
    var grid = grid
    var ans = Set<[String]>()
    // dfs method to build shape
    func recurse(_ row: Int, _ col: Int, _ direction: String, _ shape: inout [String]) {
      shape.append(direction)
      guard row >= 0, row < grid.count, col >= 0, col < grid[0].count, grid[row][col] != 0 else { return }
      grid[row][col] = 0
      // recurse in each direction
      recurse(row + 1, col, "d", &shape)
      recurse(row - 1, col, "u", &shape)
      recurse(row, col + 1, "r", &shape)
      recurse(row, col - 1, "l", &shape)
    }
    // iterate through entire grid
    for row in 0..<grid.count {
      for col in 0..<grid[0].count {
        if grid[row][col] == 1 {
          var shape = [String]()
          recurse(row, col, "0", &shape)
          ans.insert(shape)
        }
      }
    }
    return ans.count
  }
}
