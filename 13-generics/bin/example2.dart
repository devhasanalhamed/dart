void main(List<String> args) {
  /// Type matching
  print(doTypeMatch(1, 2));
  print(doTypeMatch(1, 2.2));
  print(doTypeMatch(1, 'Foo'));
  print(doTypeMatch('Baz', 'Foo'));
}

// bool doTypeMatch(Object a, Object b) {
//   return a.runtimeType == b.runtimeType;
// }

bool doTypeMatch<L, R>(L a, R b) => L == R;
