void main(List<String> args) async {
  /// Stream to [list]
  /// to list function will wait for the stream to finish
  final allNames = await getNames().toList();
  print(allNames);
}

Stream<String> getNames() async* {
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Jane';
  await Future.delayed(Duration(seconds: 1));
  yield 'Jack';
}
