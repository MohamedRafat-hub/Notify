import 'package:flutter/material.dart';
import 'package:tasky_app/constants.dart';
import 'package:tasky_app/widgets/custom_button.dart';
import 'package:tasky_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          spacing: 15,
          children: [
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
        
            CustomButton(),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}



