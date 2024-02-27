void main(List<String> args) {
  /// [enhanced] enums
  /// vandad openion is not that useful as other languages and makes enum more complecated with hardcoded values
  final foo = Person(name: 'Foo', car: Car.teslaModelX);

  switch (foo.car) {
    case Car.teslaModelX:
      print('Foo has Tesla Model X = ${foo.car}');
    case Car.teslaModelY:
      print('Foo has Tesla Model Y = ${foo.car}');
  }
}

class Person {
  final String name;
  final Car car;

  Person({required this.name, required this.car});

  @override
  String toString() => '$name\'s car $car';
}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2024,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2025,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });

  @override
  String toString() => 'Car: $manufacturer, $model, $year';
}
