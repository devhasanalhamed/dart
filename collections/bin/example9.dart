import 'dart:collection';

void main(List<String> args) {
  /// Encapsulation with unmodifiable collections
  final person = Person(
    name: 'John',
    siblings: [Person(name: 'Jane')],
  );

  person.siblings?.add(Person(name: 's'));
}

class Person {
  /// right now even that the list is private although it can be called and modified
  /// from outside the class
  /// if we have lists or maps exposed from a class we better hide them
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;
}
