void main(List<String> args) {
  /// Extending string
  /// extensions are very useful they can add functionality to a class
  int value = 10;
  print(value.timesFour);
  print(15.timesFour);

  ///
  String text = 'Hello World!';

  /// if it is a dot without a parenthesis after the variable then it is a getter
  print(text.reversed);
}

extension on int {
  int get timesFour => this * 4;
}

extension on String {
  String get reversed => split('').reversed.join();
}
