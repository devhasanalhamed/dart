void main(List<String> args) {
  /// [Mutating] of consts contents.
  const myList = [1, 2, 3];

  /// myList = [4, 5, 6]; Constant variables can't be assigned a value.
  /// Try removing the assignment, or remove the modifier 'const' from the variable.

  /// myList.add(4); Unsupported operation: Cannot add to an unmodifiable list
  print(myList);
}
