import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/edit_task/edit_task_page.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/task_list/task_list_page_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
                    subtitle: Text(
                      task.detail,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Checkbox(
                      value: task.done,
                      onChanged: (value) {
                        notifier.toggle(task: task, done: value ?? false);
                      },
                    ),
                    onTap: () async {
                      await Navigator.push<void>(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return EditTaskPage(
                              task: task,
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              )
            : const Center(
                child: Text('未完了タスクはありません'),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push<void>(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const EditTaskPage();
              },
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
