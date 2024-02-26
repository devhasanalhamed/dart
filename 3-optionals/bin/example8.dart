void main(List<String> args) {
  /// Nullable type promotion
  final String? firstName = null;

  if (firstName == null) {
    print('firstName value is null');
  } else {
    // if we end in the else block so it is can't be null.
    // final length = firstName?.length;
    final length = firstName.length;
    print(length);
  }
}
