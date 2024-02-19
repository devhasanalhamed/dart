void main(List<String> args) {
  /// [Modern] for loops
  /// 99% of times we use something like this
  /// modern loops usually lose access to an index
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  /// use keyword [in]
  for (final name in names) {
    print(name);
  }

  // print('-------------------');

  // for (final name in names) {
  //   if (name.startsWith('B')) {
  //   } else {
  //     print(name);
  //   }
  // }

  // print('-------------------');

  // for (final name in names) {
  //   if (!name.startsWith('B')) {
  //     print(name);
  //   }
  // }

  print('-------------------');

  /// continue keyword in modern loops
  /// it means continue the loop not the code
  /// and will jump to the next item
  for (final name in names) {
    if (name.startsWith('B')) continue;
    print(name);
  }

  print('-------------------');

  /// break will break the loop and exit
  for (final name in names) {
    if (name == 'Bar') {
      break;
    }
    print(name);
  }

  print('-------------------');

  /// reversed list using reversed property
  for (final name in names.reversed) {
    print(name);
  }

  print('-------------------');

  /// choose a range
  /// in dart there is a no support for ranges
  /// a way to go around is to use Iterable.generate();
  for (var i = 0; i < 10; i++) {
    print(i);
  }

  for (int i in Iterable.generate(10)) {
    print(i);
  }

  for (int i in Iterable.generate(names.length)) {
    print(names[i]);
  }
}
