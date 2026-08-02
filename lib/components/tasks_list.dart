import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:todoey/components/task_tile.dart";

import "../data.dart";

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          padding: EdgeInsets.only(
            left: 30.0,
            right: 30.0,
            top: 20.0,
            bottom: 0,
          ),
          itemCount: data.tasksCount,
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
              task: data.tasksList[index],
              onChanged: (bool? i) {
                // setState(() {
                //   data.tasksList[index].toggleTaskCompletion();
                // });
              },
            );
          },
        );
      },
    );
  }
}
