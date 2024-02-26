void main(List<String> args) {
  /// Extending optional types

  String? getFullNameOptional() {
    return null;
    // return 'Foo Bar';
  }

  String getFullName() {
    return 'Foo Bar';
  }

  final String fullName = getFullNameOptional() ?? getFullName();

  print(fullName);

  final someName = getFullNameOptional();
  someName.describe();
}

/// [Create] function describe optional value
extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
