void main(List<String> args) {
  /// [Required] named parameters
  // doSomethingWith(); invalid code
  doSomethingWith(name: 'Foo');
  // doSomethingWith(name: null); invalid code if the datatype does not allow
}

/// required parameters can't have default value
/// and it's should be passed in the call side
void doSomethingWith({required String name}) {
  print('Hello, $name');
}
