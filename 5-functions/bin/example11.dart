void main(List<String> args) {
  /// [Positional] parameters
  /// [1] passed in order and [2] don't have names
  /// [3] always required and [4] can't have default values
  // sayGoodBuyTo(); // error
  // sayGoodBuyTo('Foo'); // error
  /// even if they are null, they need to be passed
  sayGoodBuyTo('Foo', 'Bar');
}

void sayGoodBuyTo(
  String person,
  String anotherPerson,
) {
  print('Goodbye, $person and $anotherPerson!');
}
