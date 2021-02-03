/*
 Question - Trim a Binary Search Tree
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3626/
 */

class Solution {
  func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
    guard let root = root else { return nil }
    if root.val < L {
      return trimBST(root.right, L, R)
    } else if root.val > R {
      return trimBST(root.left, L, R)
    } else {
      root.left = trimBST(root.left, L, R)
      root.right = trimBST(root.right, L, R)
      return root
    }
  }
}
