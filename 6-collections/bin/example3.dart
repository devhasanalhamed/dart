void main(List<String> args) {
  final p1 = Person(name: 'Foo', age: 5);
  final p2 = Person(name: 'Foo', age: 5);
  final d1 = Dog(name: 'Foo', age: 5);
  print(p1.hashCode);
  print(p2.hashCode);
  print(d1.hashCode);

  final persons = {p1, p2, d1};
  print(persons);
}

class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});

  @override
  String toString() => 'Person: $name, $age';

  /// if you want to create a class
  /// which is will be placed inside
  /// a set just make sure to implement hashCode getter
  /// like this we will implement the hashCode, but we need to handle the
  /// equality because the hashCode is the same does not means they are equal
  @override
  int get hashCode => Object.hash(name, age);

  /// this boolean is true it two objects are identical
  /// identical means a = b which is referenced to the same object
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({required this.name, required this.age});

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object object) =>
      identical(this, object) ||
      object is Dog && name == object.name && age == object.age;
}
