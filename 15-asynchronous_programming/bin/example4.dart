void main(List<String> args) async {
  /// [Stream] is like a chain of events
  /// future => | ----- 1 SEC ----- value |
  /// stream => | ----- 1 SEC ----- value ----- 1 SEC ----- value^2 |
  /// to consume stream we can use await for
  /// await for is the same of modern loop for more than one value
  // await for (final names in names()) {
  //   print(names);
  // }
  await for (final number in getNumbers()) {
    print(number);
  }

  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

List<String> names() => ['John', 'Doe'];

/// method one of creating stream
Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
  // yield 'Doe'; dead code con't yield after throwing an exception
}
