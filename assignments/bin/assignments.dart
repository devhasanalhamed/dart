void main(List<String> arguments) {
  String text = "Ha%a0 Al-Hamed Un#cod~ 🦄";

  print(text.replaceChar(2, "s"));
}

extension ReplaceIt on String {
  String replaceChar(int index, String char) {
    List<String> list = split('');
    list[index] = char;
    return list.join();
  }
}
