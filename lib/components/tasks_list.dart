import "package:flutter/material.dart";
import "package:todoey/components/task.dart";

class TasksList extends StatelessWidget {
  const TasksList({super.key, required this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 0),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Task(taskText: list[index]);
      },
    );
  }
}
