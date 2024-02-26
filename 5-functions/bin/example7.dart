void main(List<String> args) {
  /// [Non-optional] named parameters
  doSomethingWith();
  doSomethingWith(name: 'Foo');
}

/// in this example we have a default value but it's not optional
/// it had to be a valid string
void doSomethingWith({String name = 'Bar'}) {
  print('Hello, $name');
}
