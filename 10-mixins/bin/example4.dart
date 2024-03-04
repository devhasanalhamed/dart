void main(List<String> args) {
  /// [Limiting] mixins to data types
  Human().run();
}

class HasTwoFeet {
  const HasTwoFeet();
}

/// now this is a mixin on a class not an another mixin
/// so if we want to allow the mixin to be on our class
/// we should create a sub class from has two feet and implement with canRun

mixin CanRun on HasTwoFeet {
  void run() => print('$runtimeType is running');

  /// can run is available on any type that has two feet if that type
  /// bring it in, so it's only available for has two feet
}

class HasNoFeet {
  const HasNoFeet();
}

/// this is the implementation of a class and a mixin that is on it
class Human extends HasTwoFeet with CanRun {}

class Fish extends HasNoFeet {}
