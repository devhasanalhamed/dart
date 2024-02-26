void main(List<String> args) {
  /// [Mixing] various parameters styles
  /// we can mix various dart parameters

  describeFully('Foo');
  describeFully('Foo', lastName: null);
  describeFully('Foo', lastName: 'Baz');
}

/// first we specify positional argument
void describeFully(String firstName, {String? lastName = 'Bar'}) {
  print('Hello $firstName $lastName');
}
