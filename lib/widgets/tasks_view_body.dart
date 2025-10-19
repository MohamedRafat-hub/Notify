import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_app_bar.dart';


class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomAppBar(),
      ],
    );
  }
}




