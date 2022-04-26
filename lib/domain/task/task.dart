import 'package:flutter/foundation.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_detail.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_done.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_id.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_title.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  factory Task({
    @TaskIdConverter() required TaskId id,
    @TaskTitleConverter() required TaskTitle title,
    @TaskDetailConverter() required TaskDetail detail,
    @TaskDoneConverter() required TaskDone done,
  }) = _Task;

  const Task._();

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  factory Task.create({
    required TaskTitle title,
    required TaskDetail detail,
    required TaskDone done,
  }) {
    final uuid = const Uuid().v4();
    final id = TaskId(uuid);

    return Task(
      id: id,
      title: title,
      detail: detail,
      done: done,
    );
  }
}
