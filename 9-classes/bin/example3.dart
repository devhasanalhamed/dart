void main(List<String> args) {
  /// [Sub classing] is kind of like inheriting
  final v = Vehicle(4);

  /// print is calling to print function
  print(v);
  // same as
  // print(v.toString());
  print('------------');
  print(Car());
  print('------------');
  print(Bicycle(wheelsCount: 2));

  /// we can figure that the to string function of vehicle has been inherited
  /// to the the bicycle and the car classes and that's because every function
  /// of the super class are almost inherited unless they are special functions
}

/// dart does the extends for Object for every class
class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  /// override means that you have a function in a super class
  /// and try to reimplementing it
  @override
  String toString() {
    if (runtimeType == Vehicle || runtimeType == Car) {
      return '$runtimeType with $wheelCount wheels';
    } else {
      return super.toString();
    }
  }
}

class Car extends Vehicle {
  /// under the hood dart will call the super class constructor
  Car() : super(4);

  /// [OR]

  // Car(super.wheelCount);
}

class Bicycle extends Vehicle {
  const Bicycle({int wheelsCount = 0}) : super(wheelsCount);
}
