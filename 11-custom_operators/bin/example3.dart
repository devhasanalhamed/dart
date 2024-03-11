void main(List<String> args) {
  /// Addition of two optional integers

  print(add());
  print(add(5, null));
  print(add(5, 6));
  print(add(null, 8));
}

int add([int? a, int? b]) {
  return a + b;
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
    else if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    }

    /// if this is null and other is null or another case
    else {
      return 0 as T;
    }
  }
}
