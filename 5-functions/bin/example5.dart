void main(List<String> args) {
  /// [Named] parameters

  sayHelloTo();
  sayHelloTo(name: null);
  sayHelloTo(name: 'Hasan');
}

/// types of parameters
/// named parameters by adding curly ["{parameter1, parameter2}"]
// void sayHelloTo({String name}) { //error
//   print('Hello, $name!');
// }
/// named parameters are either should have a value or be optional
/// because they always should have a value
void sayHelloTo({String? name}) {
  print('Hello, $name!');
}
