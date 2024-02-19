import 'package:collection/collection.dart';

void main(List<String> args) {
  /// [Sets] in dart
  /// another type of collections
  /// first of all we should grab a package
  /// which is a library of a piece of code someone has published
  /// ex: using dart add collection
  /// a collection of values in which any value seams to be equal to another
  /// can't be repeated, Unique list.
  final names = {'Foo', 'Bar', 'Baz', 'Qux'};
  print(names);
  print('------------------');

  /// sets will understands that the values is duplicate and con't be
  /// repeated.
  names.add('Foo');
  print(names);
  print('------------------');

  /// we can create a set using spread operator
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];

  final uniqueNames = {...names2};

  /// set with speared operator will get rid of duplicate values
  print(uniqueNames);
  print('------------------');

  /// sets works with hash able object
  /// is is hash code with equality that will determine that
  /// a value can appear in sets or not
  final foo1 = 'Foo';
  final foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print('------------------');

  if (names.contains('Foo')) {
    print('Found Foo');
  } else {
    print('Dod not find Foo');
  }
  print('------------------');

  /// equality on sets
  ///
  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};
  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  /// to check if the sets are equal we can use
  /// SetEquality function from collection package
  /// which will do a deep equality
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('------------------');
  final ages3 = {20, 30, 50};
  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
}
