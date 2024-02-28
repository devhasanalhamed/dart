void main(List<String> args) {
  /// [Getters] get only property

  final person = Person(firstName: 'Foo', lastName: 'Dan');
  print(person.fullName);
  print(person.otherFullName);
}

class Person {
  final String firstName;
  final String lastName;
  final String otherFullName;

  // unnecessary property can be deduct by getter
  // final String fullName;

  /// fullName will get calculated every time it's called
  String get fullName => '$firstName $lastName';

  /// the reason of getting a property or a getter that mey be
  /// decided by how heavy calculations it could do, if it's a lot then put it
  /// in the initializer list.

  const Person({
    required this.firstName,
    required this.lastName,
  }) : otherFullName = '$firstName $lastName';
}
