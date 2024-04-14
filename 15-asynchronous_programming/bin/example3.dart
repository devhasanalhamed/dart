void main(List<String> args) async {
  /// Future [chaining] means that a future calculate a value then feed it's value
  /// to another future
  final length = await calculateLength(await getFullName());
  print(length);

  /// another way to chain future
  final length2 = await getFullName().then(
    (value) => calculateLength(value),
  );
  print(length2);
}

Future<String> getFullName() => Future.delayed(
      Duration(seconds: 1),
      () => 'John Doe',
    );

Future<int> calculateLength(String value) => Future.delayed(
      Duration(seconds: 1),
      () => value.length,
    );
