class TaskUpdateCommand {
  TaskUpdateCommand({
    required this.id,
    required this.title,
    required this.detail,
    required this.done,
  });

  final String id;
  final String title;
  final String detail;
  final bool done;
}
