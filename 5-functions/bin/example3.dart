void main(List<String> args) {
  /// Dynamic return types
  print(doNothing());
}

// void doNothing() {}
/// not specifying the datatype for a function, dart will always take it to dynamic
/// every function does return name if the datatype is not specified by default
/// by saying void it returns null but can not be consumed by the call side
dynamic doNothing() {}
