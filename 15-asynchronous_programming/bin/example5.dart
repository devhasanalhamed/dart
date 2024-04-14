void main(List<String> args) async {
  /// Stream [async expand] function on stream, for each value the stream produce we can
  /// create another stream, it's like then function on future
  await for (final character in getNames().asyncExpand(
    (name) => getCharacters(name),
  )) {
    print(character);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(milliseconds: 200));
  yield 'John';
  await Future.delayed(Duration(milliseconds: 200));
  yield 'Doe';
}
