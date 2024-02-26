void main(List<String> args) {
  /// Comparing optionals
  int? age = 20;
  age = null;
  print(age);
  if (age == null) {
    print('Age is null');
  } else {
    print('Age is not null');
  }
}
