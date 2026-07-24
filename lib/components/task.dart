import "package:flutter/material.dart";

class Task extends StatelessWidget {
  const Task({super.key, required this.taskText});

  final String taskText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskText),
      trailing: Checkbox(value: false, onChanged: (bool? value) {}),
    );
  }
}
