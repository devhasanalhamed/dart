void main(List<String> args) {
  /// Nullable collections
  List<String?>? names;

  /// possible values of the above list are
  /// null
  /// []
  /// ['Foo', 'Bar']
  /// ['Bar', null]
  names = [];
  names.add('Foo');
  names.add(null);
  names = null;
  names?.add('Foo');
  names?.add(null);

  final first = names?.first;
  print(names);
  print(first ?? 'No first name found');

  //! Code below is a bug because dart cannot know that the first element is non nullable and it will crash application
  //! in modern languages the first element of an iterable is an optional value
  // List<int> test = [];
  // print(test.first);

  names = [];
  names.add('Baz');
  print(names);
}
