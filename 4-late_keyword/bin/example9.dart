void main(List<String> args) {
  /// [Avoiding] constructor initialization of late variables
  /// late instance variables should not be initialized in constructor
  /// otherwise they are not going to be lazy

  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');

  final doeFamily = WrongImplementationOfFamily(members: [johnDoe, janeDoe]);
  print(doeFamily);
  print(doeFamily.membersCount);

  final stanDoe = Person(name: 'stanDoe');
  final maneDoe = Person(name: 'maneDoe');

  final smithFamily = CorrectImplementationFamily(members: [stanDoe, maneDoe]);

  /// this code below is not even called yet
  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    /// assigned late variables in constructor will be resolved immediately
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('getMembersCount() is called');
    return members.length;
  }
}

class CorrectImplementationFamily {
  final Iterable<Person> members;

  /// this is how they should be initialized
  late int membersCount = membersCount = getMembersCount();

  CorrectImplementationFamily({required this.members});

  int getMembersCount() {
    print('getMembersCount() is called');
    return members.length;
  }
}
