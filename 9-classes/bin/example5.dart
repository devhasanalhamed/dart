void main(List<String> args) {
  /// [Methods] we want to create a property not final and can be both read and set
  /// methods are functions belonging to the instances of the class unless they are static
  final myCar = Car();

  myCar.drive(speed: 45);
  myCar.drive(speed: 120);
  myCar.stop();
}

class Car {
  int speed = 0;

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping!...');
    print('Stooped.');
  }
}
