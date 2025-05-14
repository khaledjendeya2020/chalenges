void reverseList(List<int> list) {
  List<int> stack = [];

  for (int item in list) {
    stack.add(item); // push
  }

  while (stack.isNotEmpty) {
    print(stack.removeLast()); // pop
  }
}

void main() {
  print("Reversed List:");
  reverseList([1, 2, 3, 4, 5]);
}
