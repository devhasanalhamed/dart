late String name;

void main(List<String> args) {
  /// late tells dart that the value ill not assign the value right now
  ///  but i guarantee i assign it before use it, more like a contract between
  /// programmer and the program

  // print(name);
  // error: LateInitializationError: Field 'name' has not been initialized.
  try {
    print(name);
  } catch (error) {
    print(error);
  }

  name = 'Foo Bar';
  print(name);
  name = 'Foo Bar2';
  print(name);
}
