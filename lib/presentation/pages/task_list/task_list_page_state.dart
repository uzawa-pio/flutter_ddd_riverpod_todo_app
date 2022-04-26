import 'package:flutter/foundation.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_list_page_state.freezed.dart';

@freezed
class TaskListPageState with _$TaskListPageState {
  const factory TaskListPageState({
    @Default(<TaskData>[]) List<TaskData> tasks,
  }) = _TaskListPageState;
}
