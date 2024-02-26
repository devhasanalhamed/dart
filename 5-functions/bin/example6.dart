void main(List<String> args) {
  /// [Default] value for named parameters
  describe();
  describe(something: null);
  describe(something: 'Hello, Universe!');
}

/// in this case we have the option to pass a null value
/// or use the default
void describe({String? something = 'Hello, World!'}) {
  print(something);
}
