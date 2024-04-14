void main(List<String> args) {
  /// [ custom ] exception class, sometimes when we throwing a specific exception a several
  /// times it's a good idea to create custom exception
  tryCreatingPerson(0);
  tryCreatingPerson(-1);
  tryCreatingPerson(160);
}

void tryCreatingPerson([int age = 0]) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (exception, stackTrace) {
    print(exception);

    /// stack trace help as unwinding of the trace when the exception happen
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
