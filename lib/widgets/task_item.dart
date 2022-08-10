// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task 1'),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      splashRadius: 40,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
      activeColor: Colors.lightBlueAccent,
    );
  }
}
