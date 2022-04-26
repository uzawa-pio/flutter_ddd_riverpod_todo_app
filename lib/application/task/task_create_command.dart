class TaskCreateCommand {
  TaskCreateCommand({
    required this.title,
    required this.detail,
    required this.done,
  });

  final String title;
  final String detail;
  final bool done;
}
