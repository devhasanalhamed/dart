void main(List<String> args) {
  /// Mixins and function parameters
  /// Mixins themselves are [data types]

  /// in the function parameter we can only accept the last mixin
  /// and it will bring all the previous mixins with it

  final person = Person(
    firstName: 'John',
    lastName: 'Doe',
  );

  print(person.fullName);
  print(getFullName(person));
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  /// even though the contract needs a getter but the final property below fullfil
  /// the contract by givin a way a value the can be get on
  @override
  final String firstName;

  @override
  final String lastName;

  Person({
    required this.firstName,
    required this.lastName,
  });
}
