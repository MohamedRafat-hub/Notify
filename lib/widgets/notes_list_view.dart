import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(padding: EdgeInsets.zero,itemBuilder: (context, index) {
        return NoteItem();
      }),
    );
  }
}