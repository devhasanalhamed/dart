// ignore_for_file: unused_local_variable

void main(List<String> args) {
  /// Assigning to [constants] values
  final int age = 10;

  /// something is less accurate can not be placed in something is more accurate
  /// constants can't be assigned to non-constants values
  /// const age2 = age; Const variables must be initialized with a constant value.
  /// Try changing the initializer to be a constant expression.
  const int age3 = 30;

  final int age4 = age3; // this is okay
}
