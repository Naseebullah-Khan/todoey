import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:todoey/data.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Data(),
      child: MaterialApp(home: TasksScreen()),
    );
  }
}
