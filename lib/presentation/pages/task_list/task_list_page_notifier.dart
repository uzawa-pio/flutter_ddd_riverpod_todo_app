import 'package:flutter_ddd_riverpod_todo_app/application/task/task_application_service.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_create_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/task_list/task_list_page_state.dart';
import 'package:flutter_ddd_riverpod_todo_app/state/task_list_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskListPageNotifier =
    StateNotifierProvider.autoDispose<TaskListPageNotifier, TaskListPageState>(
  (ref) {
    final tasks =
        ref.watch(taskListNotifierProvider).where((x) => !x.done).toList();
    return TaskListPageNotifier(tasks);
  },
);

class TaskListPageNotifier extends StateNotifier<TaskListPageState> {
  TaskListPageNotifier(List<TaskData> tasks)
      : super(const TaskListPageState()) {
    state = state.copyWith(tasks: tasks);
  }

  Future<void> create() async {
    final service = TaskApplicationService();
    final command = TaskCreateCommand(
      title: 'タイトル',
      detail: '詳細',
      done: false,
    );
    final task = await service.create(command);
    state = state.copyWith(
      tasks: <TaskData>[...state.tasks, task],
    );
  }
}
