import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_app_bar.dart';
import 'package:tasky_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(
              title: 'Edit Note',
              iconButton: IconButton(onPressed: (){}, icon: Icon(Icons.check)),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 15,
            ),
            CustomTextField(hint: 'Content' , maxLines: 5,),
          ],
        ),
      ),
    );
  }
}
