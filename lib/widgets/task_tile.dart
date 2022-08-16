// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked;

  String taskTitle;
  Function(bool?) checkboxCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        splashRadius: 40,
        activeColor: Colors.lightBlueAccent, onChanged: checkboxCallback,
        // onChanged: toggleCheckboxState,
      ),
    );
  }
}
