void main(List<String> arguments) async {
  /// [Future]
  /// to consume the future use the word await
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

/// - method one to create future
Future<String> getUserName() async => 'John Doe';

/// - method two to create future
Future<String> getAddress() => Future.value('123 Main St');

Future<String> getPhoneNumber() => Future<String>.delayed(
      const Duration(seconds: 2),
      () => '555-555-5555',
    );

Future<String> getCity() async {
  /// to wait for the future we should use await
  await Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

Future<String> getCountry() async => 'India';

/// the word async in the below code does not change anything or add anything to the code
Future<String> getZipCode() /* async */ => Future<String>.delayed(
      const Duration(seconds: 1),
      () => '12345',
    );
