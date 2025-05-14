bool isBalanced(String str) {
  List<String> stack = [];

  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      stack.add('(');
    } else if (str[i] == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  print("Balanced: ${isBalanced("(())")}"); // true
  print("Balanced: ${isBalanced("(()")}");  // false
}
