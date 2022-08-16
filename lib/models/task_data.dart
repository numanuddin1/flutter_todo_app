import 'package:flutter/foundation.dart';
import 'package:flutter_todo_app/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy Sugar'),
    Task(name: 'Buy Fruits'),
  ];
  int get taskCount {
    return tasks.length;
  }
}
