import 'package:flutter_ddd_riverpod_todo_app/application/task/task_create_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_detail.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_done.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_repository.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_title.dart';
import 'package:injector/injector.dart';

class TaskApplicationService {
  final _repository = Injector.appInstance.get<TaskRepository>();

  Future<List<TaskData>> fetchAll() async {
    final tasks = await _repository.fetchAll();
    return tasks.map(TaskData.fromDomain).toList();
  }

  Future<TaskData> create(
    TaskCreateCommand command,
  ) async {
    final title = TaskTitle(command.title);
    final detail = TaskDetail(command.detail);
    final done = TaskDone(command.done);

    final task = Task.create(
      title: title,
      detail: detail,
      done: done,
    );
    await _repository.create(task: task);
    return TaskData.fromDomain(task);
  }
}