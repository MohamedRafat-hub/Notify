import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_icon.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.iconButton});
  final String title;
  final IconButton iconButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        CustomIcon(
          iconButton:iconButton ,
        ),
      ],
    );
  }
}