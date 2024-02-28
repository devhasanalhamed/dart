void main(List<String> args) {
  /// [inheriting] constructors
  /// constructors are special functions that can not be inherited by default

  final mom = Mom();

  print(mom.role);
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({required this.role});
}

class Mom extends Person {
  Mom() : super(role: Role.mom);
}
