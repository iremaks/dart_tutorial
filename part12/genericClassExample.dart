import 'myStack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("abc");
  myStack.push(true);

  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(6);

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("emre");
}
