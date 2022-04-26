import 'package:flutter_ddd_riverpod_todo_app/application/task/task_create_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_delete_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_update_command.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_detail.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_done.dart';
import 'package:flutter_ddd_riverpod_todo_app/domain/task/task_id.dart';
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

  Future<TaskData> update(
    TaskUpdateCommand command,
  ) async {
    final id = TaskId(command.id);
    final title = TaskTitle(command.title);
    final detail = TaskDetail(command.detail);
    final done = TaskDone(command.done);

    final task = Task(
      id: id,
      title: title,
      detail: detail,
      done: done,
    );
    await _repository.update(task: task);
    return TaskData.fromDomain(task);
  }

  Future<void> delete(
    TaskDeleteCommand command,
  ) async {
    final id = TaskId(command.id);

    await _repository.delete(id: id);
  }
}
