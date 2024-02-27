void main(List<String> args) {
  /// [switch] enumerations
  /// switches also can have default cases

  final whisker = AnimalType.dog;

  switch (whisker) {
    case AnimalType.cat:
      print('Whisker is a cat');
      break;

    /// by using default we are skipping the other types like using otherwise
    /// ask your self do i want to skip future cases to animal type
    default:
      print('Whisker is not a cat');
  }
}

enum AnimalType { rabbit, dog, cat }
