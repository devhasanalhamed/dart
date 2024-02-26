void main(List<String> args) {
  /// Collection [comprehensions]
  final string = 'abracadabra';

  // var result = '';
  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     result += char;
  //   }
  // }
  // print(result);

  var withoutABC = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();

  print(withoutABC);
  print('---------------------------');
  var withoutABC2 = {
    for (final char in string.split(''))
      if (!'abc'.contains(char)) char
  };

  print(withoutABC2);
  print('---------------------------');

  final allNumbers = Iterable.generate(101);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];

  final evenNumbersFunctional = allNumbers
      .where(
        (number) => number % 2 == 0,
      )
      .toList();

  final oddNumbersFunctional = allNumbers.where(
    (number) => number % 2 != 0,
  );

  print(evenNumbers);
  // iterables are lazily evaluated only the few first and last will be
  // printed
  print(evenNumbersFunctional);
  print(oddNumbersFunctional);
  print('---------------------------');

  final names = ['John Doe', 'James Smith', 'Alice Jones'];

  final namesAndLength = {
    for (final name in names) name: name.length,
  };

  print(namesAndLength);
}
