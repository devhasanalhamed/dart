import 'dart:io';

void main(List<String> args) {
  /// Standard input and output in dart
  /// import dart:io library
  /// use stdin getter to use reading functionality
  /// use stdout getter to use print functionality

  stdout.write("hello enter a message: ");
  String? message = stdin.readLineSync();

  stdout.write("enter a number: ");
  int? number = int.parse(stdin.readLineSync()!);

  print("$message $number");
}
