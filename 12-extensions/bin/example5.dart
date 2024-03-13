void main(List<String> args) {
  /// Finding and Mapping Keys and Values on Map
  /// mapping a value in a map it that key exists
  final map = {'name': 'Foo', 'age': 42};
  final String? ageAsString = map.find('age', (int age) => age.toString());
  print('your age: $ageAsString');

  final String? addressAsString =
      map.find('address', (int age) => age.toString());
  print('you live at: $addressAsString');
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(K key, R? Function(T value) cast) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    }
    return null;
  }
}
