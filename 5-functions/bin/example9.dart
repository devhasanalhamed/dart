void main(List<String> args) {
  /// [Optionality] required named parameters
  doSomethingWithAge(age: 42);
  doSomethingWithAge(age: null);
}

/// default value will be written anyway so that we can't
/// not add default value for a required field
void doSomethingWithAge({required int? age}) {
  if (age != null) {
    final in2Years = age + 2;
    print('In 2 years, you will be $in2Years years old.');
  } else {
    print('You did not tell me your age.');
  }
}
