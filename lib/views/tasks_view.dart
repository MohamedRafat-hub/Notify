import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/tasks_view_body.dart';


class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TasksViewBody(),
    );
  }
}



