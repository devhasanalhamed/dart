void main(List<String> args) {
  /// [Type Promotion]

  /// when we have double in the equation the plus will return double and promote the type.
  const int1 = 1;
  const double1 = 1.0;
  const double result1 = double1 + int1;
  print(result1);

  /// the case below will remain integer.
  const int2 = 1;
  const int3 = 1;
  const result2 = int2 + int3;
  print(result2);

  /// [conclusion] there is a special plus defined in the double datatype to promote the return value
}
