void main(List<String> args) {
  /// Unconstrained generic type definitions
  final one = KeyEntry(1, 2); // MapEntry<int, int>
  print(one);
  final two = KeyEntry(1, 2.5); // MapEntry<int, double>
  print(two);
  final three = KeyEntry(1, 'Foo'); // MapEntry<int, String>
  print(three);
  final KeyEntry four = KeyEntry('address', null); // MapEntry<dynamic, dynamic>
  print(four);
}

/// if we don't use generic types, dart wouldn't understand our datatype
typedef KeyEntry<K, V> = MapEntry<K, V>;
