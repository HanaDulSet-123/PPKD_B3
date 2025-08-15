// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:ppkd_b_3/tugas_11/database/model/menu.dart';
import 'package:ppkd_b_3/tugas_11/database/model/user.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'login.db'),
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY, email TEXT, password TEXT, name TEXT)',
        );
        await db.execute(
          'CREATE TABLE menu(id INTEGER PRIMARY KEY, name TEXT, jumlah_pesanan TEXT, city TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> registerUser(User user) async {
    final db = await databaseHelper();
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> tambahMenu(MenuModel menu) async {
    final db = await databaseHelper();
    await db.insert(
      'menu',
      menu.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<User?> loginUser(String email, String password) async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    if (results.isNotEmpty) {
      return User.fromMap(results.first);
    }
    return null;
  }

  static Future<List<User>> getAllUsers() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('users');
    return results.map((e) => User.fromMap(e)).toList();
  }

  static Future<List<MenuModel>> getAllMenus() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('menu');
    return results.map((e) => MenuModel.fromMap(e)).toList();
  }
}
