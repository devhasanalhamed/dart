void main(List<String> args) {
  /// [Specifying] data type
  const String yourName = 'Foo Bar';
  // ignore: always_specify_types
  const hisName = yourName;

  /// [Keep] your code consistent to make that you can go to file
  /// [analysis_options.yaml] then add rule
  /// - always_specify_types

  print(yourName);
  print(hisName);
}
