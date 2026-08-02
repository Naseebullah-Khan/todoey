import 'package:flutter/foundation.dart'; // to keep it light use foundation.dart instead of material.dart

import 'models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasksList = [
    Task(name: "Task 1"),
    Task(name: "Task 2"),
    Task(name: "Task 3"),
  ];

  int get tasksCount {
    return tasksList.length;
  }
}
