void main(List<String> args) {
  /// Nullable values by default are initialized to null
  /// int a;
  /// print(a);
  /// The non-nullable local variable 'a' must be assigned before it can be used.
  /// Try giving it an initializer expression, or ensure that it's assigned on every execution

  int a;
  a = 20;
  print(a);

  String? firstName;
  print(firstName);

  /// compound operator [Assign] only if the variable on the left side is null
  firstName ??= 'Bar';
  print(firstName);
}
