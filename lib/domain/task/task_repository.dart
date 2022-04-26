import 'package:flutter_ddd_riverpod_todo_app/domain/task/task.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_id.dart';

abstract class TaskRepository {
  Future<List<Task>> fetchAll() {
    throw UnimplementedError();
  }

  Future<Task> create({
    required Task task,
  }) {
    throw UnimplementedError();
  }

  Future<Task> update({
    required Task task,
  }) {
    throw UnimplementedError();
  }

  Future<void> delete({
    required TaskId id,
  }) {
    throw UnimplementedError();
  }
}
