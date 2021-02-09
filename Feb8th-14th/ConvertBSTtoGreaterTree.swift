/*
 Question - Convert BST to Greater Tree
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/585/week-2-february-8th-february-14th/3634/
 */

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right:TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

class Solution {
  var sum = 0
  func convertBST(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    convertBST(root.right)
    sum += root.val
    root.val = sum
    convertBST(root.left)
    return root
  }
}
