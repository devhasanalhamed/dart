void main(List<String> args) async {
  /// [Finally] guarantee a block of code works after try and catch
  final db = Database();
  try {
    await db.getData();

    /// next code will not work after the exception
    await db.close();
  } on DatabaseNotOpenException {
    print('we forgot to open the database');
  } finally {
    await db.close();
  }
}

class Database {
  bool _isDbOpen = false;

  Future<void> open() async {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = true;
      print('Database opened');
    });
  }

  Future<void> close() async {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = false;
      print('Database closed');
    });
  }

  Future<String> getData() async {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(Duration(seconds: 1), () => 'Data');
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNotOpenException';
}
