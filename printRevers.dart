void printInReverse<T>(Node<T>? node) {
  if (node == null) return;
  printInReverse(node.next);
  print(node.data);
}

void main() {
  var list = LinkedList<int>();
  list.append(10);
  list.append(20);
  list.append(30);

  print("Print in Reverse:");
  printInReverse(list.head);
}
