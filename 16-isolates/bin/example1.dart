import 'dart:isolate';

void main(List<String> arguments) async {
  /// [Sample Isolates] are usually function that you spawn or a thread that can run a process
  /// inside an isolated environment
  await for (final msg in getMessages().take(20)) {
    print(msg);
  }
}

Stream<String> getMessages() {
  final rp = ReceivePort();
  // Method- 1
  return Isolate.spawn(_getMessages, rp.sendPort)
      .asStream()
      .asyncExpand((_) {
        return rp;
      })
      .takeWhile((element) => element is String)
      .cast();

  // Method- 2
  /*
  await Isolate.spawn(_getMessages, rp.sendPort);
  await for (final msg in rp.takeWhile((element) => element is String).cast()) {
    yield msg;
  }
  */
}

void _getMessages(SendPort sp) async {
  /// send port
  await for (final now in Stream.periodic(
    const Duration(milliseconds: 200),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sp.send(now);
  }
}
