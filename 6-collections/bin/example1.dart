void main(List<String> args) {
  /// [Lists] something called array in other languages
  /// it's a collection of values in serial base on index
  /// lists are internally mutable
  /// crl + t: to reach the source code list
  /// list could be a serial of any datatype
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  /// one way to enter a list is using for loop
  for (final name in names) {
    print(name);
  }
  print('------------------');

  /// reverse the list using the property
  for (final name in names.reversed) {
    print(name);
  }
  print('------------------');

  /// search an element in a list and return boolean
  /// and it's a case sensitive
  if (names.contains('Bar')) {
    print('Bar is in the list');
  }

  print('------------------');

  /// test object existing and if true it will include in the return
  /// iterable
  /// using closure () => true
  final listB = names.where((name) => name.startsWith('B'));
  print(listB);

  // OR

  for (final name in names.where((name) => name.startsWith('B'))) {
    print(name);
  }

  // OR

  bool anotherMethod(String name) {
    return name.startsWith('B');
  }

  final listB2 = names.where(anotherMethod);

  print(listB2);

  print('------------------');

  /// subscript, by taking a look to a list then write down the item with
  /// it's index
  /// if it's not a valid item will throw an exception

  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);

  print('------------------');

  /// sub list to sub ranges from a list with a start and optional end
  /// if no end it will continue to the end
  /// and the end is exclusive
  /// and the start is inclusive
  names.sublist(3).forEach(print);

  print('------------------');

  /// this final only mutate the variable to be reassigned
  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);

  print(ages);

  print('------------------');

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];

  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    /// case will lead to fail
    ///  ['foo', 'Bar', 'Baz', 'Qux'] content is different
    ///  [ 'Bar', 'Foo', 'Baz', 'Qux'] order is different
    print('names1 and names2 are not equal');
  }

  print('------------------');

  /// mapping a list is going through the list items and converting them to a value
  /// of the same type or a different type

  names.map((str) => str.length).forEach(print);
  names.map((str) => str.toLowerCase()).forEach(print);

  print('------------------');

  /// reduce an entire list to a single value using fold

  final numbers = [1, 2, 3, 4, 5];
  // var sum = 0;
  // for (final number in numbers) {
  //   sum += number;
  // }

  final sum = numbers.fold(
      0, (int previousValue, int thisValue) => previousValue + thisValue);

  print(sum);

  print('------------------');

  final totalLength =
      names.fold(0, (totalLength, str) => totalLength + str.length);
  print(totalLength);

  /// fold allow to reduce or produce one value from a list
  /// some languages called it reduce but in dart we have another
  /// function called reduce

  print('------------------');

  final result =
      names.fold('', (result, str) => '$result ${str.toUpperCase()}');
  print(result);

  print('------------------');
}
