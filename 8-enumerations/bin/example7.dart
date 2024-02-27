void main(List<String> args) {
  /// [Extending] enumerations
  AnimalType.cat
    ..jump()
    ..run();

  AnimalType.dog
    ..jump()
    ..run();

  AnimalType.rabbit
    ..jump()
    ..run();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print('$this running...');
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this  is jumping...');
  }
}
