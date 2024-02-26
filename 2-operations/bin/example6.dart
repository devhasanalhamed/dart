void main(List<String> args) {
  /// [compound assignment]
  /// some operators are not included in the standard library
  // print('Hello' + 2);
  var myAge = 20;
  print(myAge = 30);
  print(myAge ~/ 2);

  /// two operators in one.
  /// will reassign the value
  print(myAge ~/= 2);
  print(myAge *= 2);
  print(myAge += 4);
  print(myAge &= 2);
  print(myAge |= 1);
  print(myAge ^= 1);
  print(myAge -= 1);
}
