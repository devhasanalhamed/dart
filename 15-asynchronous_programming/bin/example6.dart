void main(List<String> args) async {
  /// Stream [reduce] it gives the current and previous value of stream
  int sum = 0;

  /// if we want to sum all the values
  /// - method one
  await for (final age in getAllAges()) {
    sum += age;
  }
  print('Sum of all numbers is $sum');

  /// - method two
  final sum2 = await getAllAges().reduce(add);
  print('Sum of all numbers is $sum2');
}

int add(int a, int b) => a + b;

Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}
