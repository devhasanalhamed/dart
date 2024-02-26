void main(List<String> args) {
  /// [Late] initialized only when it used.
  late final myValue = 20;
  print(myValue);

  late final yourValue = getValue();
  print('You are here');
  print(yourValue);

  /// expectations:
  /// 20
  /// getValue called
  /// You are here
  /// 10
  ///! But this is not true why?
  /// this is because late basically initialized when they called only
}

int getValue() {
  print('getValue called');
  return 10;
}