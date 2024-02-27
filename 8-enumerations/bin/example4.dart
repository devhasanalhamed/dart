void main(List<String> args) {
  /// [converting] strings to enumerations
  /// this is very useful when we have a lot of json and we do not need
  /// a lot of json parsing
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'corn'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('This is rabbit');
    case AnimalType.dog:
      print('This is dog');
    case AnimalType.cat:
      print('This is cat');
    default:
      print('Unknown animal');
  }
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere((animal) => animal.name == fromStr);
  } catch (e) {
    return null;
  }
}

enum AnimalType { rabbit, dog, cat }
