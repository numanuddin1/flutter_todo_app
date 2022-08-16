// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {

  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Tasks',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w500),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Task',
                    hintStyle: TextStyle(color: Colors.black26)),
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                widget.addTaskCallback(newTaskTitle);
                },
                child: Text(
                  'ADD',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
