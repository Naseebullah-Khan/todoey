import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/data.dart';

class TaskAddScreen extends StatelessWidget {
  const TaskAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String newTask = "";
    return Padding(
      padding: EdgeInsets.only(
        top: 15.0,
        left: 50.0,
        right: 50.0,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder().copyWith(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 4.0,
                ),
              ),
              enabledBorder: UnderlineInputBorder().copyWith(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 4.0,
                ),
              ),
            ),
            onChanged: (String newValue) {
              newTask = newValue;
            },
          ),
          SizedBox(height: 20.0),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              foregroundColor: Colors.white,
              shape: LinearBorder(),
              textStyle: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              Provider.of<Data>(context, listen: false).addTask(newTask);
              Navigator.pop(context);
            },
            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}
