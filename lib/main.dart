import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screens/practice.dart';
import 'screens/tasks_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StateManagement',
      home: Practice(),
      debugShowCheckedModeBanner: false,


    );
  }
}
