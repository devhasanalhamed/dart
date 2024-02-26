import 'dart:collection';

void main(List<String> args) {
  /// Unmodifiable map view
  final info1 = {'name': 'Foo', 'age': 24};

  /// they are useful for encapsulation purposes
  final info2 = UnmodifiableMapView(info1);
  print(info2);
}
