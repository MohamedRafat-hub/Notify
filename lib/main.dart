import 'package:flutter/material.dart';
import 'package:tasky_app/views/tasks_view.dart';

void main()
{
  runApp(TaskyApp());
}

class TaskyApp extends StatelessWidget {
  const TaskyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksView(),
      theme: ThemeData.dark(),
    );
  }
}
