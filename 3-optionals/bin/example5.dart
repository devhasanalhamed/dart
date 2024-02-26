void main(List<String> args) {
  /// Null aware operator
  /// String? lastName;
  /// print(lastName.length);
  /// The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  ///Try making the access conditional (using '?.') or adding a null check to the target ('!').

  /// Null [aware] operator ["?"]
  String? lastName;
  print(lastName?.length);

  String? nullName;
  print(nullName ?? 'Foo');
  // the below statement will start resolving from the left to the right.
  print(nullName ?? lastName ?? 'Bar');
  print(nullName ??= 'rightHandSide');
  print(nullName);
}
