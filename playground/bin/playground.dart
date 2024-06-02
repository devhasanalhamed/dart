void main(List<String> args) {
  final List<List<String>> nestedList = List.generate(
    3,
    (i) => List.generate(3, (j) => "$i$j"),
  );

  print(nestedList);

  DateTime x = DateTime.now();
  for (final cel in nestedList) {
    for (final det in cel) {
      print(det);
    }
  }
  print(DateTime.now().difference(x));

  DateTime y = DateTime.now();
  for (int i = 0; i < 9; i++) {
    int row = i ~/ 3;
    int col = i % 3;
    print(nestedList[row][col]);
  }
  print(DateTime.now().difference(y));
}
