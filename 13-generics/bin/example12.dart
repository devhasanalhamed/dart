void main(List<String> args) {
  /// Generic class properties
  print(Person(age: 10).ageRound);
  print(Person(age: 10.5).ageRound);
}

class Person<T extends num> {
  final T age;

  const Person({
    required this.age,
  });

  int get ageRound => age.round();
}
