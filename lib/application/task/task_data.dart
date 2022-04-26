import 'package:flutter/foundation.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_data.freezed.dart';

@freezed
@immutable
class TaskData with _$TaskData {
  const factory TaskData({
    required String id,
    required String title,
    required String detail,
    required bool done,
  }) = _TaskData;

  factory TaskData.fromDomain(Task domain) => TaskData(
        id: domain.id.value,
        title: domain.title.value,
        detail: domain.detail.value,
        done: domain.done.value,
      );
}
