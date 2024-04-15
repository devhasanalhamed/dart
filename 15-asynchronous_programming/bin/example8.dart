void main(List<String> args) async {
  /// [Yield] streams
  await for (final name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Peter';
  await Future.delayed(Duration(seconds: 1));
  yield 'Paul';
}

Stream<String> femaleNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mary';
  await Future.delayed(Duration(seconds: 1));
  yield 'Jane';
  await Future.delayed(Duration(seconds: 1));
  yield 'Sue';
}

Stream<String> allNames() async* {
  await for (final maleName in maleNames()) {
    yield maleName;
  }

  /// instead of using the commented code we can use yield with an asterisk with the stream function
  yield* femaleNames();
  // await for (final femaleName in femaleNames()) {
  //   yield femaleName;
  // }
}
