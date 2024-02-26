void main(List<String> args) {
  /// [Lazy] initialization to a function result
  /// It will not be initialized until the variable used
  print('Before');
  late String name = provideName();
  print('After');
  print(name);
}

String provideName() {
  print('Function is called');
  return 'Foo Bar';
}
