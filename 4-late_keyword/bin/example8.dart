void main(List<String> args) {
  /// Assigning late variable to a [non-late-variable]
  /// will resolve the late variable immediately
  print('late fullName is being initialized');
  late final String fullName = getFullName();
  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

String getFullName() {
  print('getFullName() is called');
  return 'John Doe';
}
