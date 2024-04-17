import 'dart:isolate';

void main(
  List<String> args,
  SendPort message,
) async {
  /// [Spawning] isolates using a uri
  message.send('Hello World!');
}
