void main(List<String> args) {
  /// Simple [mixins] are like separate entities that can bring functionality
  /// to existing classes and enumerations it kinda simulate multiple inheritance

  final person = Person();
  person.jump(speed: 10);
  person.walk(speed: 5);
}

mixin HasSpeed {
  abstract double speed;
}

/// create a mixin on the top ot the previous mixin
mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at the speed of $speed');

    /// we can access to the HasSpeed mixin property
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanWalk, CanJump {
  @override
  double speed;
  Person() : speed = 0;
}

/// if we remove the HasSpeed the other mixin will get an error
/// because they are built on the HasSpeed mixin
