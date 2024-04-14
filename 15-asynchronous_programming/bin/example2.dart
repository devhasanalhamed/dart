void main(List<String> args) async {
  /// Future [error handling]
  print(await getFullName(firstName: 'John', lastName: 'Doe'));

  try {
    print(await getFullName(firstName: 'John', lastName: ''));
  } on FirstOrLastNameMissingException {
    print('First or last name is missing');
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    /// future could carry either a value or an exception
    throw FirstOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
}
