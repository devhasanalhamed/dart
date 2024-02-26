void main(List<String> args) {
  /// Optional [flatMap]
  /// this idea comes from swift and rust.
  /// the function allow to drill down with an optional and grab it's value
  /// and map it to another datatype if not null
  /// and if null do nothing
  /// unwrapping and mapping optional values
  String? firstName = 'John';
  String? lastName = 'Doe';
  String? surName = null;

  final fullName = firstName.flatMap((f) => lastName.flatMap((l) => '$f $l'));
  final fullNameSur = firstName.flatMap(
      (f) => lastName.flatMap((l) => surName.flatMap((s) => '$s $l $s')));
  print(fullName);
  print(fullNameSur);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callback,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    }
    return callback(shadow);
  }
}
