import 'package:flutter_ddd_riverpod_todo_app/adapter/sqlite_adapter.dart';
import 'package:flutter_ddd_riverpod_todo_app/common/app_exception.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_id.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_repository.dart';
import 'package:sqflite/sqlite_api.dart';

class SQLiteTaskRepository extends TaskRepository {
  final _tableName = 'task';

  @override
  Future<List<Task>> fetchAll() async {
    try {
      final db = await SQLiteAdapter.db;
      final result = await db.query(_tableName);
      final tasks =
          result.isNotEmpty ? result.map(Task.fromJson).toList() : <Task>[];
      return tasks;
    } on DatabaseException catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<Task> create({required Task task}) async {
    try {
      final db = await SQLiteAdapter.db;
      await db.insert(
        _tableName,
        task.toJson(),
      );
      return task;
    } on DatabaseException catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<Task> update({required Task task}) async {
    try {
      final db = await SQLiteAdapter.db;
      await db.update(
        _tableName,
        task.toJson(),
        where: 'id = ?',
        whereArgs: <dynamic>[task.id.value],
      );
      return task;
    } on DatabaseException catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<void> delete({required TaskId id}) async {
    try {
      final db = await SQLiteAdapter.db;
      await db.delete(
        _tableName,
        where: 'id = ?',
        whereArgs: <dynamic>[id.value],
      );
    } on DatabaseException catch (e) {
      throw AppException(e.toString());
    }
  }
}
