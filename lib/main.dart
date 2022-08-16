import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/task_data.dart';
import 'package:flutter_todo_app/screens/practice/practice.dart';
import 'package:flutter_todo_app/screens/tasks_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Data(),
      child: MaterialApp(
        title: 'StateManagement',
        home: TasksScreen(),
        theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily) ,
        debugShowCheckedModeBanner: false,


      ),
    );
  }
}
