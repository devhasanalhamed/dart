void main(List<String> args) {
  /// [Avoiding] a common pitfall with late variables

  final person = Person();

  /// righting the code like this to try understand if late assigned or not
  /// is against the guidelines of dart for using late variable
  /// if that what we are after then we should use optionals
  try {
    /// avoid doing this in real code since it's against
    /// the recommendations. instead use nullable values
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
