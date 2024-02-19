void main(List<String> args) {
  /// [Switch] statement
  describe(1);
  describe(1.1);
  describe('Hello');
  describe(true);
  describe({'Key': 'value'});
  describe(['first', 'second', 'third']);
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer.');
      break;
    case double:
      print('This is a double.');
      break;
    case String:
      print('This is a String.');
      break;
    case bool:
      print('This is a bool.');
      break;
    case const (Map<String, String>):
      print('This is a map.');
      break;
    default:
      print('This is something else.');
      break;
  }
}
