import "package:flutter/material.dart";
import "package:todoey/models/task.dart";

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.tasksList,
    required this.itemBuilder,
  });

  final List<Task> tasksList;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 0),
      itemCount: tasksList.length,
      itemBuilder: itemBuilder,
    );
  }
}
