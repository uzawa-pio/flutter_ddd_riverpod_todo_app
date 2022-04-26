import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod_todo_app/application/task/task_data.dart';
import 'package:flutter_ddd_riverpod_todo_app/common/app_exception.dart';
import 'package:flutter_ddd_riverpod_todo_app/presentation/pages/edit_task/edit_task_page_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditTaskPage extends HookConsumerWidget {
  const EditTaskPage({
    Key? key,
    this.task,
  }) : super(key: key);

  final TaskData? task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isNew = task == null;
    final notifier = ref.read(editTaskPageNotifierProvider.notifier);

    final title = useTextEditingController(text: task?.title ?? '');
    final detail = useTextEditingController(text: task?.detail ?? '');
    final done = useState<bool>(task?.done ?? false);

    return Scaffold(
      appBar: AppBar(
        title: Text(isNew ? '新規作成' : '編集'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: title,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: const Text('タイトル'),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: detail,
                keyboardType: TextInputType.text,
                maxLines: 5,
                decoration: InputDecoration(
                  label: const Text('詳細'),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            SwitchListTile(
              title: const Text('完了'),
              value: done.value,
              onChanged: (value) {
                done.value = value;
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await notifier.save(
              id: task?.id ?? '',
              title: title.text,
              detail: detail.text,
              done: done.value,
            );
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
          Navigator.of(context).pop();
        },
        tooltip: 'Save',
        child: const Icon(Icons.save),
      ),
    );
  }
}
