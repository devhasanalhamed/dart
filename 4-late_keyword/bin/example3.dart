void main(List<String> args) {
  /// [Laze] variables in classes
  /// late variables as properties are will not called until they first use
  final person = Person();
  print(person.age);

  /// late function called write now
  print(person.description);

  ///
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;
  Person({this.age = 18}) {
    print('Constructor is called');
  }
  String heavyCalculationOfDescription() {
    print('Function "heavyCalculationOfDescription" are called');
    return 'Foo Bar';
  }
}
