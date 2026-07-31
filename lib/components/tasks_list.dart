import "package:flutter/material.dart";
import "package:todoey/components/task_tile.dart";
import "package:todoey/models/task.dart";

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasksList = [
    Task(name: "Task 1"),
    Task(name: "Task 2"),
    Task(name: "Task 3"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 0),
      itemCount: tasksList.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          task: tasksList[index],
          onChanged: (bool? i) {
            setState(() {
              tasksList[index].toggleTaskCompletion();
            });
          },
        );
      },
    );
  }
}
