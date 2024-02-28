void main(List<String> args) {
  /// [Static] properties and static methods
  /// the logic that can be used without a copy and can be effected on all copies
  /// of that blueprint, that means the property is not on the copy level anymore
  /// and only for the class

  print(Car.carInstantiated);
  Car(name: 'My car');
  print(Car.carInstantiated);
  Car(name: 'Your car');
  print(Car.carInstantiated);
  Car(name: 'Her car');
  print(Car.carInstantiated);
}

class Car {
  static int _carInstantiated = 0;

  static int get carInstantiated => _carInstantiated;

  void incrementCarsInstantiated() => _carInstantiated++;

  final String name;

  Car({required this.name}) {
    incrementCarsInstantiated();
  }
}
