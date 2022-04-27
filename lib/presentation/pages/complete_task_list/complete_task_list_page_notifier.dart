import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/complete_task_list/complete_task_list_page_state.dart';
import 'package:flutter_ddd_riverpod_todo_app/state/task_list_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final completeTaskListPageNotifier = StateNotifierProvider.autoDispose<
    CompleteTaskListPageNotifier, CompleteTaskListPageState>(
  (ref) {
    final tasks =
        ref.watch(taskListNotifierProvider).where((x) => x.done).toList();
    return CompleteTaskListPageNotifier(tasks);
  },
);

class CompleteTaskListPageNotifier
    extends StateNotifier<CompleteTaskListPageState> {
  CompleteTaskListPageNotifier(List<TaskData> tasks)
      : super(const CompleteTaskListPageState()) {
    state = state.copyWith(tasks: tasks);
  }
}
