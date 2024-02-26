import 'package:collection/collection.dart';

void main(List<String> args) {
  /// [Collection] package
  /// main functionalities and use cases
  /// 1- if we use a list of big booleans like thousands then boolList is the one to go with
  /// one byte to represents eight booleans so it's a normal list
  /// but internally do not use a whole byte to store a boolean
  /// 2- canonicalized map it's a map which is a collection which have the same keys and values
  /// and if we have identical maps they will appears the same map
  /// to have the opportunity to make the uniqueness of a key by your self
  /// 3- combined iterable which is an iterable which can handle a group
  /// of iterables and update their values at any point
  /// 4- combined list view, is a view of list of lists and is unmodifiable
  /// 5- combined map view
  /// 6- merging maps if we have duplicate keys we have the options to handle that case

  testBoolList();
  print('----------------');
  testCanonicalizedMap();
  print('----------------');
  testCombinedIterableView();
  print('----------------');
  testCombinedListView();
  print('----------------');
  testCombinedMapView();
  print('----------------');
  testMergingMaps();
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  print(boolList);

  boolList[3] = true;
  if (boolList[3]) {
    print('The boolean value at the index 3 is true');
  } else {
    print('The boolean value at the index 3 is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'address': 'New York',
  };

  /// usually keys determined by equality and hash value
  /// this will only allow a unique key depending on the key length
  /// final canonMap = CanonicalizedMap.from(info, (key) => key.length);
  final canonMap = CanonicalizedMap.from(info, (key) => key.split('').first);
  print(canonMap);
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [100, 200, 300];

  /// combined iterable will reflect the changes of the list at any point
  var combinedIterableView = CombinedIterableView([one, two, three]);
  print(combinedIterableView);

  // two.add(40);
  two.add(40);
  print(combinedIterableView);
}

void testCombinedListView() {
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];
  final names = CombinedListView([swedishNames, norwegianNames, frenchNames]);
  print(names);
  if (names.contains('Sven')) {
    print('Sven is in the list');
  }
  try {
    names.removeAt(0);
  } catch (e) {
    print(e);
  }

  /// but it can be modified externally using the ability to modify the original
  swedishNames.removeAt(0);
  print(names);
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'d': 4, 'e': 5, 'f': 6};
  var map3 = {'a': 7, 'b': 8, 'c': 9};

  /// if the key is present it will not overwrite
  var combinedMap = CombinedMapView([map1, map2, map3]);

  print(combinedMap);
  try {
    combinedMap.addAll({'c': 25});
  } catch (e) {
    print(e);
  }
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);
}

void testMergingMaps() {
  const info1 = {
    'name': 'John',
    'age': 30,
    'height': 1.8,
  };

  const info2 = {
    'name': 'John 2',
    'age': 31,
    'height': 1.9,
    'weight': 80,
  };

  final merge = mergeMaps(info1, info2, value: (one, two) => one);

  print(merge);
}
