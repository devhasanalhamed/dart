void main(List<String> args) {
  /// [Ordering] of named parameters
  /// they can be at any order
  describePerson();
  describePerson(age: 20);
  describePerson(name: 'Foo');

  /// ordering in named parameters are not effective
  describePerson(name: 'Foo', age: 20);
  describePerson(age: 20, name: 'Foo');
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age old.');
}
