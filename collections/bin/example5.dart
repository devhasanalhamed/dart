void main(List<String> args) {
  /// [Iterable] are lazily evaluated lists pretty much
  final iterable = Iterable.generate(20, (e) => getName(e));
  print(iterable);

  /// we can notice that iterable are acting lazy so they can only
  /// so this iterable not called until they needed
  print(iterable.take(2));
}

String getName(int i) {
  return 'John #$i';
}
