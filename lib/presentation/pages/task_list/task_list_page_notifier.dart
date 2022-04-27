import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/task_list/task_list_page_state.dart';
import 'package:flutter_ddd_riverpod_todo_app/state/task_list_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final taskListPageNotifier =
    StateNotifierProvider.autoDispose<TaskListPageNotifier, TaskListPageState>(
  (ref) {
    final tasks =
        ref.watch(taskListNotifierProvider).where((x) => !x.done).toList();
    return TaskListPageNotifier(ref.read, tasks);
  },
);

class TaskListPageNotifier extends StateNotifier<TaskListPageState> {
  TaskListPageNotifier(this._read, List<TaskData> tasks)
      : super(const TaskListPageState()) {
    state = state.copyWith(tasks: tasks);
  }

  final Reader _read;

  Future<void> toggle({
    required TaskData task,
    required bool done,
  }) async {
    final notifier = _read(taskListNotifierProvider.notifier);
    await notifier.update(
      id: task.id,
      title: task.title,
      detail: task.detail,
      done: done,
    );
  }
}
