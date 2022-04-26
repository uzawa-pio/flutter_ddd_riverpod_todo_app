import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_title.freezed.dart';

@freezed
class TaskTitle with _$TaskTitle {
  const factory TaskTitle(
    String value,
  ) = _TaskTitle;
}

class TaskTitleConverter implements JsonConverter<TaskTitle, String> {
  const TaskTitleConverter();

  @override
  TaskTitle fromJson(String? value) {
    return TaskTitle(value ?? '');
  }

  @override
  String toJson(TaskTitle title) {
    return title.value;
  }
}
