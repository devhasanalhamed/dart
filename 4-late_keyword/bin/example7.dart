void main(List<String> args) {
  /// Initializing late final variables
  /// late variables allow initialization only once
  late final bool isTeenager;
  const age = 12;

  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    /// else if to avoid the smart dart analyzer
    isTeenager = false;
  }

  try {
    /// this is error could happen in some cases because the analyzer
    /// is not smart enough
    isTeenager = false;
    print('isTeenager: $isTeenager');
  } catch (e) {
    print(e);
  }
}
