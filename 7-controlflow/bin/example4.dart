void main(List<String> args) {
  /// [While] loops
  /// evaluate only a condition

  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  var counter = 0;

  while (counter < names.length) {
    print(names[counter]);

    /// print(names[counter++]); this print statement have a side effects which means it's little bit cryptic
    /// our print does not only do print in this case
    counter++;
  }

  print('-----------------------');

  counter = -1; // using mental gymnastic xD

  while (++counter < names.length) {
    print(names[counter]);
  }

  print('-----------------------');

  /// reversed
  counter = names.length;
  while (--counter >= 0) {
    print(names[counter]);
  }

  print('-----------------------');

  /// do while
  /// will first execute the code immediately then
  /// check the condition
  counter = 0;

  /// we can use continue and break in this while loop too
  do {
    if (names[counter] == 'Bar') {
      counter++;
      continue;
    }
    print(names[counter++]);

    if (counter == 2) {
      break;
    }
  } while (counter < names.length);

  print('-----------------------');

  counter = 0;

  /// video method
  do {
    final name = names[counter++];

    if (name == 'Baz') {
      continue;
    }
    print(name);
  } while (counter < names.length);
}
