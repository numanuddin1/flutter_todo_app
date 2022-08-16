// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task.dart';
import 'package:flutter_todo_app/models/task_data.dart';
import 'package:flutter_todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../screens/practice/tasks.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (BuildContext context, taskData, Widget? child) { return ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (BuildContext context, int index) {
          return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                // setState(() {
                //   Provider.of<Data>(context).tasks[index].toggleDone();
                // });
              });
        },
      ); },
    );
  }
}
