void main(List<String> args) {
  /// [Setters] give the control over the property

  final myCar = Car();

  try {
    myCar.drive(speed: 10);
    myCar.drive(speed: -2);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;

  int get speed => _speed;

  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('Speed cannot be negative');
    }
    _speed = newSpeed;
  }

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
