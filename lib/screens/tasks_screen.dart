import "package:flutter/material.dart";
import "package:todoey/components/tasks_list.dart";
import "package:todoey/screens/task_add_screen.dart";

import "../components/task_tile.dart";
import "../models/task.dart";

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasksList = [
    Task(name: "Task 1"),
    Task(name: "Task 2"),
    Task(name: "Task 3"),
  ];
  late String newTask;

  TaskTile itemBuilder(BuildContext context, int index) {
    return TaskTile(
      task: tasksList[index],
      onChanged: (bool? i) {
        setState(() {
          tasksList[index].toggleTaskCompletion();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        elevation: 5,
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (BuildContext cotext) {
              return SingleChildScrollView(
                child: TaskAddScreen(
                  addTask: () {
                    setState(() {
                      tasksList.add(Task(name: newTask));
                    });
                    Navigator.pop(context);
                  },
                  onChanged: (String newValue) {
                    newTask = newValue;
                  },
                ),
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white, size: 50.0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 120.0,
              bottom: 30.0,
              left: 50.0,
              right: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 40.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Todoey",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${tasksList.length} Tasks",
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TasksList(tasksList: tasksList, itemBuilder: itemBuilder),
            ),
          ),
        ],
      ),
    );
  }
}
