void main(List<String> args) {
  /// [No] return values
  greet();

  /// you would never invoke the function and assign
  /// the result to a variable, we just invoke void
  /// final void value = greet();
  /// although you can do this but is's like assigning nothing to nothing
}

void greet() {
  print('Greetings!!');
}
