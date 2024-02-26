void main(List<String> args) {
  /// [Omitting] return type
  /// dart can figure it out when it come to the function return value
  /// but is not a good practice to not write the return type
  printHello();
}

///     - always_declare_return_types
void printHello() {
  print('Hello');
}
