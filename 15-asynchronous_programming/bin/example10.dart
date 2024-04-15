import 'dart:async';

void main(List<String> args) async {
  /// Stream [transformer] class take one stream and  change it to another stream
  await for (final name in names) {
    print(name.toUpperCase());
  }

  print('--------------------');

  await for (final name in names.map((name) => name.toUpperCase())) {
    print(name.toUpperCase());
  }

  print('--------------------');
  await for (final name in names.capitalized) {
    print(name.toUpperCase());
  }

  print('--------------------');
  await for (final name in names.capitalizedUsingMap) {
    print(name.toUpperCase());
  }
}

Stream<String> names = Stream.fromIterable(
  [
    'Seth',
    'Kathy',
    'Lars',
  ],
);

extension on Stream<String> {
  Stream<String> get capitalized => transform(
        ToUpperCase(),
      );

  Stream<String> get capitalizedUsingMap => map(
        (name) => name.toUpperCase(),
      );
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (name) => name.toLowerCase(),
    );
  }
}
