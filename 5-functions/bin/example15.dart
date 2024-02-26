void main(List<String> args) {
  /// [arrow] functions
  /// functions that can omit their return keyword
  /// to make a function simpler
  print(minus());
  print(minus(10, 7));
  print(minus(15, 8));

  /// [First] class citizen
  print(performOperation(12, 6, add));
  print(performOperation(9, 3, minus));
}

int minus([int lhs = 0, int rhs = 0]) => lhs - rhs;
int add([int lhs = 0, int rhs = 0]) => lhs + rhs;

/// first class functions: functions can be passed to another functions
/// first class citizens,

int performOperation(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}
