Node<T>? reverseList<T>(Node<T>? head) {
  Node<T>? prev = null;
  Node<T>? current = head;

  while (current != null) {
    Node<T>? next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

void main() {
  var list = LinkedList<int>();
  list.append(1);
  list.append(2);
  list.append(3);

  list.head = reverseList(list.head);
  print("Reversed Linked List:");
  list.printList();
}
