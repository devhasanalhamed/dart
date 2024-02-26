void main(List<String> args) {
  /// [Optional] positional parameters
  /// using [] square brackets to define optional positional
  /// any thing inside this brackets should have a default value
  /// or be nullable
  makeUpperCase();
  makeUpperCase('Foo');
  makeUpperCase(null, 'Baz');
  makeUpperCase('Foo', 'Bar');
}

void makeUpperCase([String? firstName, String lastName = 'Bar']) {
  print('${firstName?.toUpperCase()} ${lastName.toUpperCase()}');
}
