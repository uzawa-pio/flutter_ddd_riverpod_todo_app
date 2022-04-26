import 'package:flutter/foundation.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do_page_state.freezed.dart';

@freezed
class ToDoPageState with _$ToDoPageState {
  const factory ToDoPageState({
    @Default(<TaskData>[]) List<TaskData> tasks,
  }) = _ToDoPageState;
}
