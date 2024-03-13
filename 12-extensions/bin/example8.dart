void main(List<String> args) {
  /// Extension Overrides
  /// names on extensions needed for override like this
  final jack = Person(name: 'Jack', age: 27);
  print(ShortDescription(jack).description);
  print(LongDescription(jack).description);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });
}

// short description on person
extension ShortDescription on Person {
  String get description => '$name ($age)';
}

// long description on person
extension LongDescription on Person {
  String get description => '$name is $age years old';
}
