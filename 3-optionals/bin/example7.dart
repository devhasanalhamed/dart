void main(List<String> args) {
  /// Force unwrapping(reading)
  final String? firstName = null;

  /// [Force] read the content
  // final forceRead = firstName!;
  // print(forceRead);

  try {
    final forceRead = firstName!;
    print(forceRead);
  } catch (error) {
    print(error);
  }

  //! Note: it's not good risk to take when in production
  //? Instead use var  = firstName?? 'string';
}
