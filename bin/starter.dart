import 'dart:io';

import '../stack.dart';

void main(List<String> args) {
  final stack1 = Stack<int>();
  stack1.push(1);
  stack1.push(2);
  stack1.push(3);
  stack1.pop();
  print("Push 1,2,3 and then pop a element results");
  print("The Stack is \n $stack1");

  print(
      "Lets make a list with S M O K E as the elements and then convert it to a Stack");
  const list = ['S', 'M', 'O', 'K', 'E'];
  final listToStack = Stack.of(list);
  print("The List converted to Stack \n $listToStack");
  listToStack.pop();
  print("After a pop operation  \n$listToStack");
  //Lets complete the challenges
  print("Challenge 1 Reverse a List");
  const list1 = [1, 2, 3, 4, 5, 6];
  print("\nThe List is $list1");
  var stackList1 = Stack.of(list1);
  final reverseList1 = Stack();
  while (stackList1.isNotEmpty) {
    reverseList1.push(stackList1.pop());
  }
  print("The list in reverse order is \n$reverseList1");
  print("Challenge 2 Balance The Parentheses");
  String? inputString = stdin.readLineSync();
  var parenthesesStack = Stack();
  inputString?.runes.forEach((element) {
    if (String.fromCharCode(element) == '(') {
      parenthesesStack.push('(');
    } else if (String.fromCharCode(element) == ')') {
      parenthesesStack.pop();
    } else {
      //'do nothing
    }
  });
  if (parenthesesStack.isEmpty) {
    print("The string you entered is balanced");
  } else {
    print("The string you entered is unbalanced");
  }
}
