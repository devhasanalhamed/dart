void main(List<String> args) {
  /// [Rethrow]
  try {
    tryCreatingPerson(20);
    tryCreatingPerson(-1);

    /// the last statement will not  run
    tryCreatingPerson(141);
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
}

void tryCreatingPerson([int age = 0]) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException {
    /// rethrow means that if the exception happen it's going to
    /// rethrow it to the caller of the function and it should handle it there
    rethrow;
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
  print('-' * 20);
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(
    this.age,
    this.message,
  );

  @override
  String toString() => 'InvalidAgeException{age: $age, message: $message}';
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(age, 'Age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeException(age, 'Age cannot be greater than 140');
    }
  }
}
