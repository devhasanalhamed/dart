void main(List<String> args) {
  /// [Default] value for optionals
  /// in rust if there is an optional datatype
  /// we can extend the function that return it's value or default equivalent

  print(fullName(null, null));
  print(fullName('John', 'Doe'));
  print(fullName(null, 'Doe'));
  print(fullName('John', 'Doe'));
}

String fullName(
  String? firstName,
  String? lastName,
) =>
    '${firstName.orDefault} ${lastName.orDefault}';

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    } else {
      switch (T) {
        case String:
          return ' ' as T;
        case int:
          return 0 as T;
        case double:
          return 0.0 as T;
        case bool:
          return false as T;
        default:
          throw Exception('No default value for type $T');
      }
    }
  }
}
