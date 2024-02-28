void main(List<String> args) {
  /// [Constructors]

  const me = Person('Hasan', 26);
  print('Hello ${me.name}, your age is ${me.age}');

  const foo = Person.foo();
  print('------------------');
  print('Hello ${foo.name}, your age is ${foo.age}');

  const bar = Person.bar(27);
  print('------------------');
  print('Hello ${bar.name}, your age is ${bar.age}');

  const baz = Person.baz();
  print('------------------');
  print('Hello ${baz.name}, your age is ${baz.age}');

  const other = Person.other();
  print('------------------');
  print('Hello ${other.name}, your age is ${other.age}');
}

class Person {
  final String name;
  final int age;

  /// [types] of constructors
  /// [1- generative constructor]
  const Person(this.name, this.age);

  /// [2- named constructor with initializer list]
  const Person.foo()
      : name = 'Foo',
        age = 20;

  const Person.bar(this.age) : name = 'Bar';

  const Person.baz({this.name = 'Baz', this.age = 32});

  const Person.other({String? name, int? age})
      : name = name ?? 'Baz',
        age = age ?? 32;
}
