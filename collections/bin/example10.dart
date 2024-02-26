import 'dart:collection';

void main(List<String> args) {
  /// Extending [list base] to create a safer list
  /// the purpose is to fix some problems dart has
  /// 1- first one is the default value of the first property
  // final List<String> names = [];
  // print(names.first);

  /// 2- access an invalid index
  // print(names[1]);

  const notFound = 'NOT_FOUND';
  const defaultString = 'DEFAULT_VALUE';

  final myList = SafeList(
    absentValue: notFound,
    defaultValue: defaultString,
    values: ['Foo', 'Bar'],
  );

  print(myList.length);
  print(myList.first);
  print(myList[3]);

  myList.length = 20;
  print(myList);
}

class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.absentValue,
    required this.defaultValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  // this setter will control the length of the list and if the new length
  // is bigger than the current one it will add default values to it
  // rather than crash
  @override
  set length(int newLength) {
    if (newLength <= length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(newLength - _list.length, defaultValue),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.first : absentValue;
}
