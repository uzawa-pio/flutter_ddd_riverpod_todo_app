import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/state/task_list_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editTaskPageNotifierProvider =
    StateNotifierProvider.autoDispose<EditTaskPageNotifier, void>(
  (ref) {
    return EditTaskPageNotifier(ref.read);
  },
);

class EditTaskPageNotifier extends StateNotifier<void> {
  EditTaskPageNotifier(this._read) : super(null);

  final Reader _read;

  Future<void> save({
    required String id,
    required String title,
    required String detail,
    required bool done,
  }) async {
    final notifier = _read(taskListNotifierProvider.notifier);
    if (id.isEmpty) {
      await notifier.create(
        title: title,
        detail: detail,
        done: done,
      );
    } else {
      await notifier.update(
        id: id,
        title: title,
        detail: detail,
        done: done,
      );
    }
  }

  Future<void> delete({
    required TaskData task,
  }) async {
    final notifier = _read(taskListNotifierProvider.notifier);
    await notifier.delete(id: task.id);
  }
}
