void main(List<String> args) {
  /// [Classes] are blueprint of information
  /// you can create the logic and reuse the logic in many different places
  /// the blueprint it self called class and the copies called instances
  const person1 = Person(name: 'John', age: 20);
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;

  /// constructor special function who's name as at the class itself
  /// his job is to create an instance of that class
  /// the constructor should fulfilling the properties
  /// this is the long syntax of constructor
  // Person({required String name, required int age})
  //     : name = name,
  //       age = age;

  const Person({
    required this.name,
    required this.age,
  });
}
