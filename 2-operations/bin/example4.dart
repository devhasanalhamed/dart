void main(List<String> args) {
  /// [Binary infix]
  /// they do not mutate the value
  const age5 = 50;
  print(age5 + 20);
  print(age5 - 20);
  print(age5 * 20);
  print(age5 / 20);
  print(age5 ~/ 20);
  print(age5 % 20);
  print(age5 == 20);
  print(age5 != 20);
  print(age5 > 20);
  print(age5 >= 20);
  print(age5 < 20);
  print(age5 <= 20);

  /// bitwise infix operators
  /// [meaningless] until you work with bits
  print(age5 & 20); // bitwise AND 1 & 1 = 1, 0 & 1 = 0, 1 & 0 = 0, 0 & 0 = 0.
  print(age5 | 20); // bitwise OR 1 | 1 = 1, 0 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0.
  print(age5 ^ 20); // bitwise XOR 1 ^ 1 = 0, 0 ^ 1 = 1, 1 ^ 0 = 1, 0 ^ 0 = 0.

  print(age5 << 1); // bitwise left shift
  /// 0110 0011
  /// shift left by 1
  /// 1100 0110
  /// 0110 0011
  /// shift left by 2
  /// 1000 1100
  print(age5 >> 1); // bitwise right shift
}
