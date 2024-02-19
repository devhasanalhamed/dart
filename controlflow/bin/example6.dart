void main(List<String> args) {
  /// For loops over map
  /// dart tuples does not have it yet
  const info = {
    'name': 'John',
    'age': 30,
    'height': 1.8,
    'isMarried': false,
    'address': {'street': 'Main Street', 'city': 'New York', 'country': 'USA'},
  };

  // for (final entry in info){ // not valid code
  // }

  for (final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }
}
