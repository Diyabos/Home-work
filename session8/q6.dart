import 'dart:async';
import 'dart:vmservice_io';

/**
 Q6
 Given a string s containing just the characters '(', ')', '{', '}'
 , '[' and ']', determine if the input string is valid.
 An input string is valid if:
 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 3. Every close bracket has a corresponding open bracket of the
 same type.
 Examples:- '()' → Valid- '()[]{}' → Valid- '(]' → Invalid-
 '([)]' → Invalid- '{[]}' → Valid
 */
bool isVaild(String s) {
  List<String> stack = [];
  Map<String, String> matching = {"}": "{", ")": "(", "]": "["};
  for (int i = 0; i < s.length; i++) {
    String brackets = s[i];
    if (brackets == '(' || brackets == '{' || brackets == '[') {
      stack.add(brackets);
    } else if (matching.containsKey(brackets)) {
      if (stack.isEmpty || stack.last != matching[brackets]) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isVaild("()"));
  print(isVaild("()[]{}"));
  print(isVaild("(]"));
  print(isVaild("([)]"));
  print(isVaild("{[]}"));
}
