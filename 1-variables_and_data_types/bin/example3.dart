void main(List<String> args) {
  /// [Mutating] variables
  /// Vanilla variables so just variable can reassigned
  /// and it's value can internally change
  /// [var] keyword to identify vanilla variable
  var address = '123 Main St';
  print(address);
  address = '456 Main St'; //reassign
  print(address);
  address = address.replaceAll('Main', 'Branch');

  /// in this example it's not accurately mutate the value but in other data types like list it will be more clearly
  print(address);
}
