void main(List<String> args) {
  /// Operators on class definition
  final meThisYear = Person(age: 27);
  final meNextYear = meThisYear + 1;
  print(meThisYear);
  print(meNextYear);
}

class Person {
  final int age;

  Person({required this.age});

  /// operators not only can be crate inside extensions
  Person operator +(int age) => Person(age: this.age + age);

  @override
  String toString() => 'Person (age = $age)';
}
