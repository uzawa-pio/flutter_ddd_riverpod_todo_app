import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod_todo_app/common/app_exception.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/task_list/task_list_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskListPage extends ConsumerWidget {
  const TaskListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(taskListPageNotifier);
    final notifier = ref.watch(taskListPageNotifier.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: state.tasks.isNotEmpty
            ? ListView.builder(
                itemCount: state.tasks.length,
                itemBuilder: (context, index) {
                  final task = state.tasks[index];
                  return ListTile(
                    title: Text(task.title),
                  );
                },
              )
            : const Center(
                child: Text('未完了タスクはありません'),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await notifier.create();
          } on AppException catch (e) {
            await showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('エラー'),
                  content: Text(e.toString()),
                );
              },
            );
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
