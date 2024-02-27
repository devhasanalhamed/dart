void main(List<String> args) {
  /// [enumerations] allow you create similar object in one structure

  final woof = Animal(name: 'woof', type: AnimalType.dog);

  if (woof.type == AnimalType.cat) {
    print('woof is a cat');
  } else {
    print('woof is not a cat');
  }

  // if (woof.type == AnimalType.cat) {
  // } else if (woof.type == AnimalType.dog) {
  // } else if (woof.type == AnimalType.rabbit) {}

  /// if we want to handle all cases
  /// in the future if a type added this will break
  switch (woof.type) {
    case AnimalType.rabbit:
      print('woof is a rabbit');
    case AnimalType.dog:
      print('woof is a dog');
    case AnimalType.cat:
      print('woof is a cat');
  }
}

enum AnimalType { rabbit, dog, cat }

class Animal {
  final String name;
  final AnimalType type;

  Animal({
    required this.name,
    required this.type,
  });

  @override
  String toString() => '$name, $type';
}
