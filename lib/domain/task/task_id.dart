import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_id.freezed.dart';

@freezed
class TaskId with _$TaskId {
  const factory TaskId(
    String value,
  ) = _TaskId;
}

class TaskIdConverter implements JsonConverter<TaskId, String> {
  const TaskIdConverter();

  @override
  TaskId fromJson(String? value) {
    return TaskId(value ?? '');
  }

  @override
  String toJson(TaskId id) {
    return id.value;
  }
}
