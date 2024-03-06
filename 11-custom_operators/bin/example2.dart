void main(List<String> args) {
  /// Multiplying an iterable
  const names = ['Seth', 'Kathy', 'Ethan', 'Megan'];
  print(names * 50);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield* this;
    }
  }
}
