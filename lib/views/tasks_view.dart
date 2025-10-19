import 'package:flutter/material.dart';

import 'widgets/tasks_view_body.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TasksViewBody(),
    );
  }
}



