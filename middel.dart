Node<T>? findMiddle<T>(Node<T>? head) {
  Node<T>? slow = head;
  Node<T>? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  var list = LinkedList<int>();
  list.append(1);
  list.append(2);
  list.append(3);
  list.append(4);
  list.append(5);

  Node<int>? middle = findMiddle(list.head);
  print("Middle Node: ${middle?.data}");
}
