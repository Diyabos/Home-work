import 'Notecase6.dart';

/**
 Given the head of a singly linked list, reverse the list,
  and return the reversed list.
 */
ListNode? reverseList(ListNode? head) {
  ListNode? prev;
  ListNode? current = head;

  while (current != null) {
    ListNode? nextTemp = current.next;
    current.next = prev;
    prev = current;
    current = nextTemp;
  }

  return prev;
}

void main() {
  ListNode head = ListNode(1, ListNode(2, ListNode(3)));

  ListNode? reversed = reverseList(head);

  while (reversed != null) {
    print(reversed.value);
    reversed = reversed.next;
  }
}
