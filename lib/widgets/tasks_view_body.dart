import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tasky_app/widgets/custom_app_bar.dart';
import 'package:tasky_app/widgets/task_item.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          TaskItem(),
        ],
      ),
    );
  }
}


