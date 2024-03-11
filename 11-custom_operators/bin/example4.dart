void main(List<String> args) {
  /// Subtracting string from another string
  print('Foo Bar' - 'Foo');
  print('Bar' - 'Bar');
  print('Foo Bar' - 'Baz');
}

extension Remove on String {
  String operator -(String other) => replaceAll(other, '');
}
