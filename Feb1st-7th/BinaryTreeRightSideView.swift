/*
 Question - Binary Tree Right Side View
 Link - > https://leetcode.com/explore/featured/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3630/
 */

class Solution {
  func rightSideView(_ root: TreeNode?) -> [Int] {
    
    var result = [Int](), nodeQ = [TreeNode]()
    
    if let root = root{
      nodeQ.append(root)
    }
    
    while nodeQ.count > 0{
      var size = nodeQ.count
      
      for i in 0..<size{
        let node = nodeQ.removeFirst()
        
        if i+1 == size{
          result.append(node.val)
        }
        
        if let left = node.left{
          nodeQ.append(left)
        }
        
        if let right = node.right{
          nodeQ.append(right)
        }
      }
    }
    
    return result
  }
  //O(n), O(n)
}
