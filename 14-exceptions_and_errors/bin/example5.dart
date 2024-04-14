void main(List<String> args) {
  /// [Custom] throws annotation
  try {
    print('Dog aged 11 is going to run...');
    Dog(age: 11, isTired: false).run();
  } catch (e) {
    print(e);
  }

  try {
    print('A tired dog is going to run...');
    Dog(age: 2, isTired: true).run();
  } catch (e) {
    print(e);
  }
}

/// create custom annotation
class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;

  const Animal({required this.age});

  /// it does not do anything is just decorative or annotation
  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;

  const Dog({
    required this.isTired,
    required super.age,
  });

  /// tells the developer that you're going to throw these exceptions of a function
  @Throws([DogIsTiredException, DogIsTooOldException])

  /// it can do basically using comments (documentation) like this one but that is another way to do it
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTiredException();
    } else {
      print('Dog is running');
    }
  }
}
