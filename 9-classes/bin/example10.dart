void main(List<String> args) {
  /// [abstract] classes are little bit special and they are
  /// blueprint of blueprints xD
  /// there are two ways to use abstract class
  /// [1-] extending
  /// need to implement any non concrete property or method
  /// [2-] implementing
  /// re implement every thing

  const car = Car();
  print(car.kind);
  car.accelerate();
  car.decelerate();

  const motorcycle = Motorcycle();
  print(motorcycle.kind);
  motorcycle.accelerate();
  motorcycle.decelerate();
}

abstract class Vehicle {
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

enum VehicleKind { car, truck, motorcycle, bicycle }

class Car extends Vehicle {
  const Car() : super(kind: VehicleKind.car);
}

class Motorcycle implements Vehicle {
  const Motorcycle();
  @override
  VehicleKind get kind => VehicleKind.motorcycle;

  @override
  void accelerate() => print('motorcycle is decelerating');

  @override
  void decelerate() => print('motorcycle is decelerating');
}
