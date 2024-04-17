import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  /// Keeping an isolate [alive]

  final responder = await Responder.create();

  do {
    stdout.write('Say something (or type exit): ');
    final line = stdin.readLineSync(encoding: utf8);
    switch (line?.trim().toLowerCase()) {
      case null:
        continue;
      case 'exit':
        exit(0);
      default:
        final msg = await responder.getMessages(line!);
        print(msg);
    }
  } while (true);
}

class Responder {
  final ReceivePort rp;
  final Stream<dynamic> broadcastRp;
  final SendPort communicatorSendPort;

  Responder({
    required this.rp,
    required this.broadcastRp,
    required this.communicatorSendPort,
  });

  /// dart does not allow to create an async instance of a class it's always synchronous
  /// that's why we are creating static async function
  static Future<Responder> create() async {
    final rp = ReceivePort();
    Isolate.spawn(
      _communicator,
      rp.sendPort,
    );

    final broadcastRp = rp.asBroadcastStream();
    final SendPort communicatorSendPort = await broadcastRp.first;

    return Responder(
      rp: rp,
      broadcastRp: broadcastRp,
      communicatorSendPort: communicatorSendPort,
    );
  }

  Future<String> getMessages(String forGreeting) async {
    communicatorSendPort.send(forGreeting);

    return broadcastRp
        .takeWhile((element) => element is String)
        .cast<String>()
        .take(1)
        .first;
  }
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
      // Todo: fix this
      // https://github.com/vandadnp/youtube-course-dart-crash-course-public/blob/main/isolates/bin/example3.dart
      // sp.send('I have no response to that!');
    }
  }
}

const messageAndResponses = {
  '': 'Ask me a question like "How are you?',
  'Hello': 'Hi',
  'How are you?': 'Fine',
  'What are you doing?': 'Learning about Isolates in Dart!',
  'Are you having fun?': 'Yeah sure!',
};
