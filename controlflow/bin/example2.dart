void main(List<String> args) {
  /// classic for [Loops]
  /// traditional for loops are not common used these days

  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  /// three parts
  /// var i or index
  /// condition
  /// increment or decrement
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }
  print('----------------');

  for (var i = names.length - 1; i >= 0; i--) {
    print(names[i]);
  }

  print('----------------');

  for (var i = 0; i < names.length; i += 2) {
    print(names[i]);
  }
}
