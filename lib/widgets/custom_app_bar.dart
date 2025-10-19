import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_icon.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tasks',
          style: TextStyle(fontSize: 28),
        ),
        CustomIcon(),
      ],
    );
  }
}