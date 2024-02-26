void main(List<String> args) {
  /// [Unary postfix]
  var age4 = 50;

  /// below operator will print first the substitute
  /// will [mutate] the variable
  print(age4--);
  print(age4);

  print(age4++);
  print(age4);
}
