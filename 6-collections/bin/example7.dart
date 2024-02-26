import 'dart:collection';

void main(List<String> args) {
  /// Unmodifiable list views

  final names = ['John', 'Jane'];
  names.add('Jack');

  /// this is how to create a readonly list in dart
  final readOnlyList = UnmodifiableListView(names);
  print(readOnlyList);
  try {
    readOnlyList.add('Jack');
  } catch (e) {
    print(e);
  }
}
