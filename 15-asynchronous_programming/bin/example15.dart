import 'dart:async';

void main(List<String> args) {
  /// [Broadcast] streams, a stream is an object can be listened once at a time
  /// that's why we have two types regular stream and broadcast which can be listened from multiple listeners at the same time
}

Future<void> nonBroadcastStreamExample() async {
  final controller = StreamController<String>();
  controller.sink.add('Bob');
  controller.sink.add('Alice');
  controller.sink.add('Joe');
}
