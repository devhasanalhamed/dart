void main(List<String> args) {
  /// if and Else [statement]
  /// conditions evaluate for true or false
  const yourName = 'Foo';

  const myName = 'Bar';

  /// once the condition is evaluated the whole block
  /// of code of if else conditions are evaluated
  if (yourName == myName) {
    print('We have the same name!');
  } else if (yourName == 'Foo') {
    print('Hello, Foo!');
  } else if (yourName == 'Foo' && myName == 'Bar') {
    print('I am Foo and you are Bar!');
  } else {
    print('something else!');
  }
}
