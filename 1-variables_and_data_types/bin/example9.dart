void main(List<String> args) {
  /// [Assigning] const and final
  const thisList = [1, 2, 3];
  final thatList = thisList;

  /// const someList = thatList; Const variables must be initialized with a constant value.
  /// Try changing the initializer to be a constant expression.

  print(thisList);
  print(thatList);
}
