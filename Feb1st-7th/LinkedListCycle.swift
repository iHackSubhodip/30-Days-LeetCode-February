/*
 Question - Linked List Cycle
 Link - > https://leetcode.com/explore/challenge/card/february-leetcoding-challenge-2021/584/week-1-february-1st-february-7th/3627/
 */

class Solution {
  func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head, fast = head
    while fast != nil && fast?.next != nil{
      slow = slow?.next
      fast = fast?.next?.next
      if slow === fast{
        return true
      }
    }
    return false
  }
}
