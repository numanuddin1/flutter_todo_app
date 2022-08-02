import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/task_item.dart';


class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      TaskItem(),
      TaskItem(),
    ]);
  }
}