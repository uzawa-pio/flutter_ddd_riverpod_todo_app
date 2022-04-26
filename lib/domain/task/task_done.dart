import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_done.freezed.dart';

@freezed
class TaskDone with _$TaskDone {
  const factory TaskDone(
    // ignore: avoid_positional_boolean_parameters
    bool value,
  ) = _TaskDone;
}

class TaskDoneConverter implements JsonConverter<TaskDone, int> {
  const TaskDoneConverter();

  @override
  TaskDone fromJson(int? value) {
    return TaskDone(value != 1);
  }

  @override
  int toJson(TaskDone done) {
    return done.value ? 1 : 0;
  }
}
