void main(List<String> args) {
  /// Addition of two optional integers

  int? value1;
  int? value2;

  final result = value1 + value2;
  final result1 = 5 + value2;
  final result2 = value1 + 6;
  final result3 = 5 + 10;
  print(result);
  print(result1);
  print(result2);
  print(result3);
}

extension NullableAdd<T extends num> on T? {
  T operator +(T? other) {
    /// shadow of the instance to not mistaking the plus operator
    final thisShadow = this;

    /// if this is NOT null and other is null
    if (this != null && other == null) {
      return this as T;
    }

    /// if this is null and other is NOT null
    else if (this == null && other != null) {
      return other;
    }

    /// if this is NOT null and other is NOT null
    else if (thisShadow != null || other != null) {
      return thisShadow + other as T;
    }

    /// if this is null and other is null or another case
    else {
      return 0 as T;
    }
  }
}
