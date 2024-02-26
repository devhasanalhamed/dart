void main(List<String> args) {
  /// Operators are simple functions
  /// created by the language creators
  /// in modern language we can create our own operators
  const age1 = 64;
  const age2 = 30;

  /// Hover on "+" num +(num other)
  print(age1 + age2);
  print(age1 + age2 + 30);

  /// Dart will start with parentheses
  /// Plus
  print(age1 + (age2 - 30));

  /// Minus
  print(age1 - age2);

  /// Multiply
  print(age1 * age2);

  /// Dividing any number will return [double]
  const divide = age1 / age2;
  print(divide);

  /// Get Int instead of double using [truncating division]
  const intDivided = age1 ~/ age2;
  print(intDivided);

  /// Remainder
  print(age1 % age2);
}
