import 'package:flutter_ddd_riverpod_todo_app/application/task/task_application_service.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_create_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
}
