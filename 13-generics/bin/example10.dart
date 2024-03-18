void main(List<String> args) {
  final personName =
      personThing.mapIfOfType((Person p) => p.name) ?? 'Unknown person name';
  print(personName);

  final animalName =
      animalThing.mapIfOfType((Animal a) => a.name) ?? 'Unknown animal name';
  print(animalName);

  final unknownAnimal =
      personThing.mapIfOfType((Animal a) => a.name) ?? 'Unknown animal name';
  print(unknownAnimal);
}

abstract class Thing {
  final String name;
  const Thing({required this.name});
}

class Person extends Thing {
  final int age;

  const Person({
    required String name,
    required this.age,
  }) : super(name: name);
}

class Animal extends Thing {
  final String species;

  const Animal({
    required String name,
    required this.species,
  }) : super(name: name);
}

const Thing personThing = Person(
  name: 'Foo',
  age: 20,
);

const Thing animalThing = Animal(
  name: 'Bar',
  species: 'Cat',
);

/// this extension will run on any datatype
extension<T> on T {
  R? mapIfOfType<E, R>(R Function(E) f) {
    final shadow = this;
    if (shadow is E) {
      return f(shadow);
    } else {
      return null;
    }
  }
}
