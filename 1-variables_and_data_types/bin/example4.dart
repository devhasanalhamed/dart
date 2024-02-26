void main(List<String> args) {
  /// Assign [variables] to each [other]
  String name = 'Foo';
  var address = '';
  address = name;
  print(address);

  /// address = 20; A value of type 'int' can't be assigned to a variable of type 'String'.
  /// Try changing the type of the variable, or casting the right-hand type to 'String'.

  /// var will determine data type at compile time
}
