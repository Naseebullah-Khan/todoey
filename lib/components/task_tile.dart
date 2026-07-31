import "package:flutter/material.dart";
import "package:todoey/models/task.dart";

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.task, required this.onChanged});

  final Task task;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: task.isCompleted,
        activeColor: Colors.lightBlueAccent,
        onChanged: onChanged,
      ),
    );
  }
}
