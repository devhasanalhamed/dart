void main(List<String> args) {
  /// Combine null aware
  /// ? access property
  /// ?? took the value of the right hand side
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
  }

  changeLastName();

  // mislead dart analysis
  // final foo = lastName;
  // print(foo);

  if (lastName?.contains('Bar') ?? false) {
    print('Last name contains Bar');
  }

  if (lastName?.contains('Bar') == true) {
    print('Last name contains Bar');
  }
}
