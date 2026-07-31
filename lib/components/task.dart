import "package:flutter/material.dart";

class Task extends StatefulWidget {
  const Task({super.key, required this.taskText});

  final String taskText;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskText,
        style: TextStyle(
          decoration: isChecked
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(
        isCompleted: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    super.key,
    required this.isCompleted,
    required this.onChanged,
  });

  final bool isCompleted;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isCompleted,
      activeColor: Colors.lightBlueAccent,
      onChanged: onChanged,
    );
  }
}
