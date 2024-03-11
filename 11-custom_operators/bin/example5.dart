void main(List<String> args) {
  /// Subtracting an iterable from another iterable
  print([1, 2, 3] - [2]);
  print([1, 2] - [3]);
  print(['Boo', 'Foo'] - ['Foo', 'Boo']);
  print(['Foo', 'Boo', 'Qux'] - ['Baz']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}
