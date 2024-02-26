void main(List<String> args) {
  /// [return] keyword in functions
  print(add());
  print(add(5));
  print(add(1, 2));
  print(add(4, 10));
}

int add([int a = 0, int b = 0]) {
  return a + b;
}
