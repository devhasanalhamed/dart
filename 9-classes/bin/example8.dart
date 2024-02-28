void main(List<String> args) {
  /// [factory] constructor can create instances of sub classes
  /// in some languages called class clustering.

  print(Vehicle());
  print(Vehicle.car());
  print(Vehicle.truck());
}

class Vehicle {
  const Vehicle();

  /// create immediate sub class or the same class
  factory Vehicle.car() => Car();

  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'Vehicle of type $runtimeType';
}

class Car extends Vehicle {
  Car();
}

class Truck extends Vehicle {
  Truck();
}
