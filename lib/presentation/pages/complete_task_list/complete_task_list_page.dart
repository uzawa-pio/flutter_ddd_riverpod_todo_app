import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/complete_task_list/complete_task_list_page_notifier.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/edit_task/edit_task_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompleteTaskListPage extends ConsumerWidget {
  const CompleteTaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(completeTaskListPageNotifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done'),
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
    );
  }
}
