import 'dart:io';

void main(List<String> args) {
  /// switching over integers
  /// we need dart.io to use STD in and out

  do {
    stdout.write('Enter your age or type "e" for exit ');
    final input = stdin.readLineSync();
    print(input);

    if (input == 'e') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('Invalid age. Try again');
      continue;
    }
    final age = int.tryParse(input);

    if (age == null) {
      stdout.writeln('Invalid age. Try again');
      continue;
    }

    switch (age) {
      case 10:
        stdout.writeln('You are 10 years old. Great!');
        break;
      case 20:
        stdout.writeln('You are 20 years old. Still very young!');
        break;
      case 30:
        stdout.writeln('You are 30 years old. You are an adult!');
        break;
      default:
        stdout.writeln('Man you are either too young or too old.');
        break;
    }
  } while (true);
}
