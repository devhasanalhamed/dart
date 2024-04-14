void main(List<String> arguments) {
  /// Exceptions are meant to be caught and errors are not
  /// an exception is that as a programmer can't plan for like passing a value
  /// and errors are clearly documented (programmer fault)
  /// throwing in [ class ] constructors
  tryCreatingPerson();
  tryCreatingPerson(27);
  tryCreatingPerson(-1);
  tryCreatingPerson(141);
}

void tryCreatingPerson([int age = 0]) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
  print('-' * 20);
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      /// we can throw an exception and that is the best practice
      throw Exception('Age must be positive');
    } else if (age > 140) {
      /// or throw anything :)
      throw 'Age must be less than 140';
    }
  }
}
