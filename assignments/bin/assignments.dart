void main(List<String> arguments) async {
  try {
    await for (final event in simpleEmitter([1, 2, 3, 4, 5])) {
      print("Main: $event");
    }
  } catch (e) {
    print(e);
  }
}

Stream<String> simpleEmitter(List<int> numbersToPrint) async* {
  for (final number in numbersToPrint) {
    await Future.delayed(Duration(seconds: 1));
    await for (final string in simpleStringEmitter(["One", "Two"])) {
      yield "SimpleEmitter: $string";
    }
  }
}

Stream<String> simpleStringEmitter(List<String> stringsToPrint) async* {
  for (final string in stringsToPrint) {
    await Future.delayed(Duration(seconds: 1));
    yield "SimpleStringEmitter: $string";
  }
}
