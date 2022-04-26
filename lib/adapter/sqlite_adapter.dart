// ignore_for_file: lines_longer_than_80_chars

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteAdapter {
  SQLiteAdapter._();

  static const _databaseName = 'sample.db';
  static int get _databaseVersion => _migrationScripts.length;

  static const _migrationScripts = <String>[
    'CREATE TABLE task (id TEXT NOT NULL PRIMARY KEY, title TEXT NOT NULL, detail TEXT NOT NULL, done INTEGER DEFAULT 0);',
  ];

  static Database? _db;

  static Future<Database> get db async {
    return _db ??= await _create();
  }

  static Future<Database> _create() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, _databaseName);
    return openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  static Future<void> _onCreate(
    Database database,
    int version,
  ) async {
    for (var i = 0; i < version; i++) {
      await database.execute(_migrationScripts[i]);
    }
  }

  static Future<void> _onUpgrade(
    Database database,
    int oldVersion,
    int newVersion,
  ) async {
    for (var i = oldVersion; i < newVersion; i++) {
      await database.execute(_migrationScripts[i]);
    }
  }
}
