import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  /// Isolates [communication] to send and receive with an isolate
  /// we can create another receive port and send it again to the originator
  /// remember: receive port is sending and receiving messages, send port only sending messages
  do {
    stdout.write('Say something: ');
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);
      default:
        final msg = await getMessages(line!);
        print(msg);
    }
  } while (true);
}

Future<String> getMessages(String forGreeting) async {
  final rp = ReceivePort();
  Isolate.spawn(
    _communicator,
    rp.sendPort,
  );

  final broadcastRp = rp.asBroadcastStream();
  final SendPort communicatorSendPort = await broadcastRp.first;
  communicatorSendPort.send(forGreeting);

  return broadcastRp
      .takeWhile((element) => element is String)
      .cast<String>()
      .take(1)
      .first;
}

void _communicator(SendPort sp) async {
  final rp = ReceivePort();
  sp.send(rp.sendPort);

  final messages = rp.takeWhile((element) => element is String).cast<String>();

  await for (final message in messages) {
    for (final entry in messageAndResponses.entries) {
      if (entry.key.trim().toLowerCase() == message.trim().toLowerCase()) {
        sp.send(entry.value);
        continue;
      }
    }
    sp.send('I have no response to that!');
  }
}

const messageAndResponses = {
  '': 'Ask me a question like "How are you?',
  'Hello': 'Hi',
  'How are you?': 'Fine',
  'What are you doing?': 'Learning about Isolates in Dart!',
  'Are you having fun?': 'Yeah sure!',
};
