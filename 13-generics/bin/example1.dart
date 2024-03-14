void main(List<String> arguments) {
  /// generic are the idea of the type playing
  /// allow us to play with the types of a variable
  /// [Generic] integer or double
  /// the call side is responseable to specify the wanted type by the result
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);
  final int intValue = eitherIntOrDouble();
  print(intValue);
  // final String stringValue = eitherIntOrDouble();
  // print(stringValue);
}

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception('Not supported!');
  }
}
