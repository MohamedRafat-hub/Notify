import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.only(top: 24 , bottom: 24 , left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build your career with Mohamed Rafat',
                style: TextStyle(fontSize: 16, color:  Colors.black.withValues(alpha: .4)),
              ),
            ),
            trailing: Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'October 19 2025',
              style: TextStyle(color: Colors.black.withValues(alpha: .4)),
            ),
          ),
        ],
      ),
    );
  }
}