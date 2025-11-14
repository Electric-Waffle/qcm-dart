
import 'package:sqlite3/sqlite3.dart';

class DatabaseHelper {
  late final Database db;

  DatabaseHelper() {
    openDatabase();
  }

  void openDatabase() {
    db = sqlite3.open('./data/database.db');
  }

  void closeDatabase() {
    db.dispose();
  }

}
