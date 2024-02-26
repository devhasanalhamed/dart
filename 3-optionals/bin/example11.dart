void main(List<String> args) {
  /// Unwrapping multiple values
  print(getFullName(null, null));
  print(getFullName('John', null));
  print(getFullName(null, 'Doe'));
  print(getFullName('John', 'Doe'));
}

String getFullName(String? firstName, String? lastName) {
  return withAll([firstName, lastName], (names) => names.join(' ')) ?? 'Empty';
}

T? withAll<T>(List<T?> optionals, T Function(List<T>) callback) =>
    optionals.any((element) => element == null)
        ? null
        : callback(optionals.cast<T>());
