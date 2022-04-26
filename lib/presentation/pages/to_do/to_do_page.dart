import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod_todo_app/common/app_exception.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/to_do/to_do_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoPage extends ConsumerWidget {
  const ToDoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(toDoPageNotifierProvider);
    final notifier = ref.watch(toDoPageNotifierProvider.notifier);
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
                child: Text('タスクはありません'),
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
