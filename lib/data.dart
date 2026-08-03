import 'dart:collection';

import 'package:flutter/foundation.dart'; // to keep it light use foundation.dart instead of material.dart

import 'models/task.dart';

class Data extends ChangeNotifier {
  final List<Task> _tasksList = [
    Task(name: "Task 1"),
    Task(name: "Task 2"),
    Task(name: "Task 3"),
  ];

  UnmodifiableListView<Task> get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  int get tasksCount {
    return _tasksList.length;
  }

  void addTask(String name) {
    _tasksList.add(Task(name: name));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTaskCompletion();
    notifyListeners();
  }
}
