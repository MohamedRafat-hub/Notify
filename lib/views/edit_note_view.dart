import 'package:flutter/material.dart';
import 'package:tasky_app/models/note_model.dart';
import 'package:tasky_app/widgets/custom_app_bar.dart';
import 'package:tasky_app/widgets/custom_text_field.dart';

import '../widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(note: note,),
    );
  }
}


