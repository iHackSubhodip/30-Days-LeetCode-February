/*
 Question - Copy List with Random Pointer
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/585/week-2-february-8th-february-14th/3635/
 */

public class Node {
  public var val: Int
  public var next: Node?
  public var random: Node?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
    self.random = nil
  }
}

class Solution {
  func copyRandomList(_ head: Node?) -> Node? {
    var root = head
    while root != nil{
      let copyHead = Node(root!.val)
      let next = root?.next
      copyHead.next = next
      root?.next = copyHead
      root = next
    }
    
    root = head
    
    while root != nil{
      root?.next?.random = root?.random?.next
      root = root?.next?.next
    }
    
    root = head
    let newHead = root?.next
    
    while root != nil{
      let tempNext = root?.next?.next
      let itsNext = tempNext?.next
      
      root?.next?.next = itsNext
      root?.next = tempNext
      
      root = root?.next
    }
    
    return newHead
  }
}
