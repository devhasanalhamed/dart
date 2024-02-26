import 'dart:io';

void main(List<String> args) {
  /// switching over strings
  /// we need dart.io to use STD in and out

  do {
    stdout.write('Enter your Name or type "e" for exit ');
    final input = stdin.readLineSync();
    print(input);

    if (input == 'e') {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('Invalid Name. Try again');
      continue;
    }

    switch (input.toLowerCase()) {
      case 'john':
      case 'jane':
        stdout.writeln('Hello $input you are my friend.');
        break;
      default:
        stdout.writeln('Hello $input!');
        break;
    }

    /// OR
    /// using labels
    //   switch (input.toLowerCase()) {
    //     case 'john':
    //       continue toJane;
    //     toJane:
    //     case 'jane':
    //       stdout.writeln('Hello $input you are my friend.');
    //       break;
    //     default:
    //       stdout.writeln('Hello $input!');
    //       break;
    //   }
  } while (true);
}
