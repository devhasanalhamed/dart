void main(List<String> args) {
  /// [spread] operator with collections
  addToArrayWrong();
  print('-----------------------');
  addToArrayRight();
  print('-----------------------');
  addToDictionaryWrong();
  print('-----------------------');
  addToDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];

  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];

  /// this assign the memory position
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);

  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];

  final names2 = ['Foo 2', 'Bar 2', 'Baz 2'];

  /// this assign the memory position
  final allNamesRight = [...names1, ...names2];

  // ignore: prefer_spread_collections
  final anotherWay = [...names1]..addAll(names2);

  print(names1);
  print(names2);
  print(allNamesRight);
  print(anotherWay);
}

void addToDictionaryWrong() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };

  final result = info;
  try {
    result.addAll({'weight': 80});
  } catch (e) {
    print(e);
  }
}

void addToDictionaryRight() {
  const info = {
    'name': 'Foo',
    'age': 20,
    'height': 1.8,
  };

  final result = {...info}..addAll({'weight': 80});
  print(result);
}
