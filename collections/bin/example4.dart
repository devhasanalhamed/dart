void main(List<String> args) {
  /// [Maps] are key value collections
  /// key must be unique
  final info = {'name': 'Foo', 'age': 10};
  print(info);

  /// or use specific value by a key
  print(info['name']);

  /// if the key not found will return null
  print(info['names']);
  print('------------------');

  /// we have access to all keys and values as iterable
  print(info.keys);
  print(info.values);
  print('------------------');

  /// we can add a key to map if does not exists using function
  info.putIfAbsent('height', () => 180.0);
  print(info);

  print('------------------');

  /// if we don't care if the key is present we can use
  info['height'] = 190.0;
  print(info);
  print('------------------');

  /// iterate through the map using for
  /// the support of tuples we do not have so.
  for (final entry in info.entries) {
    print('${entry.key} ${entry.value}');
  }
  print('------------------');

  /// test if map contains a key or not
  if (info.containsKey('height')) {
    print('height: is present');
  } else {
    print('height: is absent');
  }
  print('------------------');

  /// map could have kays of any type
  final mapWithIntKeys = {1: 'A', 2: 'B'};
  print(mapWithIntKeys);
  print(mapWithIntKeys[1]);

  print('------------------');
}
