import 'package:flutter_ddd_riverpod_todo_app/application/task/task_application_service.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_create_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/to_do/to_do_page_state.dart';
import 'package:flutter_ddd_riverpod_todo_app/state/task_list_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final toDoPageNotifierProvider =
    StateNotifierProvider.autoDispose<ToDoPageNotifier, ToDoPageState>(
  (ref) {
    final tasks = ref.watch(taskListNotifierProvider);
    return ToDoPageNotifier(tasks);
  },
);

class ToDoPageNotifier extends StateNotifier<ToDoPageState> {
  ToDoPageNotifier(List<TaskData> tasks) : super(const ToDoPageState()) {
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
