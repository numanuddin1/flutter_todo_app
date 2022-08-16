// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../widgets/task_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 38, bottom: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundShapeButton(),
                SizedBox(
                  height: 28,
                ),
                Text(
                  'StateMngt',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '${Provider.of<Data>(context).taskCount} Tasks',
                  style: TextStyle(fontSize: 20, color: Colors.white,),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: TaskList(),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen((newTaskTitle){
           // setState(() {
           //   Provider.of<Data>(context).tasks.add(Task(name: newTaskTitle));
           // });
           Navigator.pop(context);
          }));
        },
       child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,

      ),
    );
  }
}

class RoundShapeButton extends StatelessWidget {
  const RoundShapeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Icon(
        Icons.list,
        color: Colors.lightBlueAccent,
        size: 45,
      ),
    );
  }
}



