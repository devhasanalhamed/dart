void main(List<String> args) {
  /// return functions from functions

  final int Function() whatDidYouDo = doSomething(10, 20);
  print(whatDidYouDo());

  /// Or

  print(doSomething(20, 40)());
}

/// the return is another function will return integer
int Function() doSomething(int lhs, int rhs) => () => lhs + rhs;

/// this type of code is usually are not okay 
/// if there is no purpose, you may search for cases could fit
