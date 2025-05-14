class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data);
}

class LinkedList<T> {
  Node<T>? head;

  void append(T data) {
    if (head == null) {
      head = Node(data);
    } else {
      Node<T> current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node(data);
    }
  }

  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
