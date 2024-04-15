import 'dart:async';

void main(List<String> args) async {
  /// Stream [controllers] is an object that can read and add values to
  /// * streams are read only
  final controller = StreamController<String>();

  controller.sink.add('Hello');
  controller.sink.add('World');
  controller.sink.add('!');

  await for (final value in controller.stream) {
    print(value);
  }

  controller.close();
}
