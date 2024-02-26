void main(List<String> args) {
  /// [Synchronous] generators

  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  yield 'Bob';
  yield 'Alice';
  yield 'Joe';
  print('Producing template names');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  yield 'Foo';
  yield 'Bar';
  yield 'Baz';
}
