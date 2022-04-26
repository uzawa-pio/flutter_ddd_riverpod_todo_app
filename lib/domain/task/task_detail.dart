import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_detail.freezed.dart';

@freezed
class TaskDetail with _$TaskDetail {
  const factory TaskDetail(
    String value,
  ) = _TaskDetail;
}

class TaskDetailConverter implements JsonConverter<TaskDetail, String> {
  const TaskDetailConverter();

  @override
  TaskDetail fromJson(String value) {
    return TaskDetail(value);
  }

  @override
  String toJson(TaskDetail detail) {
    return detail.value;
  }
}
