void main(List<String> args) {
  /// Mapping list to iterables
  const names = ['John', 'Jane', 'Jack', 'Jill'];

  /// map returns an iterable from a list because
  /// the function may do heavy calculations so it will not
  /// call it for all items if not needed
  final upperCaseNames = names.map((name) {
    print('Map get called');
    return name.toUpperCase();
  });

  print(upperCaseNames.take(2));
}
