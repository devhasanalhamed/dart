void main(List<String> args) {
  /// Four types of operators in dart
  /// 1- Unary Prefix: before one value
  /// 2- Unary Postfix: after one value
  /// 3- Binary Infix: between two values
  /// 4- Compound Assignment
  /// Unary: only on one value
  /// Binary: two values

  /// [Unary prefix]
  /// will also modify the value it self

  var age3 = 30;

  /// operator below mutating the value and return it.
  print(--age3);
  print(++age3);

  /// operator below only return and not mutating.
  const myTrue = true;
  print(!myTrue);

  /// unary bitwise completement prefix operator
  print(~1);

  ///  (0000 0000)  (0000 0000) (0000 0000) (0000 0001)
  /// (1111 1111)  (1111 1111) (1111 1111) (1111 1110)

  /// operator below only return and not mutating.
  print(-age3);
  print(-(-age3));
}
