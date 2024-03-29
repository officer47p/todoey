import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (newValue) {
              newTask = newValue;
            },
          ),
          RaisedButton(
            color: Colors.lightBlueAccent,
            child: Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pop(
              context,
              newTask,
            ),
          )
        ],
      ),
    );
  }
}
