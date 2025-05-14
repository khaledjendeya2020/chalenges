Node<T>? removeAll<T>(Node<T>? head, T value) {
  while (head != null && head.data == value) {
    head = head.next;
  }

  Node<T>? current = head;

  while (current != null && current.next != null) {
    if (current.next!.data == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}

void main() {
  var list = LinkedList<int>();
  list.append(2);
  list.append(3);
  list.append(2);
  list.append(4);
  list.append(2);

  list.head = removeAll(list.head, 2);
  print("List after removing 2s:");
  list.printList();
}
