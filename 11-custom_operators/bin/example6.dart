void main(List<String> args) {
  /// Custom operators on maps
  /// {'name': 'John'} + {'age': 26}
  print(<String, dynamic>{'name': 'John'} + {'age': 27});
  print(
    {'name': 'John', 'age': 27, 'height': 1.8} - {'height': 1.8},
  );
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Map<K, V> operator *(Map<K, V> other) => other;
}
