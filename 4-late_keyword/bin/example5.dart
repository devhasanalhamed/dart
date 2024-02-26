void main(List<String> args) {
  /// Multiple [assignment] of late variables

  /// we can reassign late variables unless they are final late
  late String randomName = provideRandomName();
  print(randomName);
  randomName = 'Bar Lee';
  print(randomName);

  print('__________________________________');

  final person = Person();
  person.description = 'Person Description 1';
  print(person.description);
  person.description = 'Person Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Dog Description 1';
  print(woof.description);
  try {
    woof.description = 'Description 2';
    print(woof.description);
  } catch (e) {
    print(e);
  }
}

String provideRandomName() {
  print('provideName() is called');
  return 'Foo Bar';
}

class Person {
  late String description;
}

class Dog {
  /// final late String description; error
  /// because it's a final means that only can be defined once
  late final String description;
}
