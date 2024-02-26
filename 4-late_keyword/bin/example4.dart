void main(List<String> args) {
  /// Late variable [dependency]

  final person = Person();
  print(person.fullName);
  print(person.fullName);
  print(person.fullName);

  print('________________________________________________________');
  print(person.fullName);
  print(person.firstName);
  print(person.lastName);
}

class Person {
  late String fullName = _getFullName();

  /// if we remove the late we will get error
  /// because the variable are dependent on another variable
  /// and that how the class properties can be depending on each other
  late String firstName = fullName.split(' ').first;
  late String lastName = fullName.split(' ').last;

  /// this function will called only the firs time of initialization
  String _getFullName() {
    print('_getFullName() is called');
    return 'Foo Bar';
  }
}
