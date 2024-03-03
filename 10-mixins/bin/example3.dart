void main(List<String> args) {
  /// Mixins with [Logic]
  /// although mixins have properties they can have functions also
  final whiskers = Cat(age: 4);
  print(whiskers.age);
  whiskers.incrementAge();
  print(whiskers.age);
}

mixin HasAge {
  abstract int age;

  void incrementAge() => age++;
}

class Cat with HasAge {
  /// we can not have a final age here because the mixin is mutating the function
  /// which do not allow to have const constructor or final property
  @override
  int age;

  Cat({required this.age});
}
