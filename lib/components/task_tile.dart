import "package:flutter/material.dart";
import "package:todoey/models/task.dart";

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.task,
    this.onChanged,
    this.onLongPress,
  });

  final Task task;
  final void Function(bool?)? onChanged;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        onLongPress: onLongPress,
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
      ),
    );
  }
}
