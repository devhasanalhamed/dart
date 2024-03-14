void main(List<String> args) {
  /// Constrained generic type definitions
  final momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };

  final brotherAndSisterAndMyFish = {
    'brother': Person(),
    'sister': Person(),
    'fishy': Fish(),
  };

  /// dart can detect that the common ancestor is can breathe
  final allValues = [
    momAndDad,
    brotherAndSisterAndMyFish,
  ];

  describe(allValues);
}

/// Constrained generic type definitions: T extends canBreathe
typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();

  @override
  void breathe() => print('Breathing...');
}

class Fish with CanBreathe {
  const Fish();

  @override
  void breathe() => print('Breathing...');
}
