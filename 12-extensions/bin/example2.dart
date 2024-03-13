void main(List<String> args) {
  /// Sum of iterables
  print('sum of integers: ${[2, 5, 8].sum}');
  print('sum of doubles: ${[2, 5.5, 8.0].sum}');
}

/// in situations we need to return the same type
/// we can work with generics
extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
