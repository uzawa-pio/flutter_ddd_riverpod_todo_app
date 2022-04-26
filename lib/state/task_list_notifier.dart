import 'package:flutter_ddd_riverpod_todo_app/application/task/task_application_service.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_create_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_update_command.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/task/task_delete_command.dart';

final taskListNotifierProvider =
    StateNotifierProvider<TaskListNotifier, List<TaskData>>(
  (ref) {
    return TaskListNotifier();
  },
);

class TaskListNotifier extends StateNotifier<List<TaskData>> {
  TaskListNotifier() : super([]) {
    final service = TaskApplicationService();
    service.fetchAll().then((value) => state = value);
  }

  Future<void> create({
    required String title,
    required String detail,
    required bool done,
  }) async {
    final service = TaskApplicationService();
    final command = TaskCreateCommand(
      title: title,
      detail: detail,
      done: done,
    );
    final task = await service.create(command);
    state = [...state, task];
  }

  Future<void> update({
    required String id,
    required String title,
    required String detail,
    required bool done,
  }) async {
    final service = TaskApplicationService();
    final command = TaskUpdateCommand(
      id: id,
      title: title,
      detail: detail,
      done: done,
    );
    final task = await service.update(command);
    state = [
      for (final t in state)
        if (task.id == t.id) task else t,
    ];
  }

  Future<void> delete({
    required String id,
  }) async {
    final service = TaskApplicationService();
    final command = TaskDeleteCommand(
      id: id,
    );
    await service.delete(command);
    state = [
      for (final t in state)
        if (id != t.id) t,
    ];
  }
}
