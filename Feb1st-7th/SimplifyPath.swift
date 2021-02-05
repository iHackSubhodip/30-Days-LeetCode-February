/*
 Question - Simplify Path
 Link - > https://leetcode.com/explore/featured/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3629/
 */

class Solution {
  func simplifyPath(_ path: String) -> String {
    var stack = [String]()
    var components = path.split(separator: "/")
    for component in components{
      switch component{
      case "": break
      case ".": break
      case "..": stack.popLast()
      default:
        stack.append(String(component))
      }
    }
    return "/" + String(stack.joined(separator: "/"))
  }
}
