void main(List<String> args) {
  /// Type [promotion]
  /// tell dart we have a value in less precision that need
  /// to be signed a value of more precision
  /// then double is more precision than integer because
  /// it give's you more precision
  /// when assign number 30 to double datatype the dart
  /// will treat the 30 as more precise value as 30.0
  /// this is called promoting
  final double hisAge = 30;

  /// final int herAge = 21.2; A value of type 'double' can't be assigned to a variable of type 'int'.
  /// Try changing the type of the variable, or casting the right-hand type to 'int'.
  /// this is called demoting

  print(hisAge);
}
