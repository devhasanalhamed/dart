void main(List<String> args) {
  /// Custom operators on maps
  /// {'name': 'John'} + {'age': 26}
  print(<String, dynamic>{'name': 'John'} + {'age': 27});
  print(
    {'name': 'John', 'age': 27, 'height': 1.8} - {'height': 1.8},
  );
  print({'name': 'John'} * 3);
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield this;
    }
  }
}
