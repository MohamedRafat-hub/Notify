import 'package:flutter/material.dart';
import 'package:tasky_app/widgets/custom_app_bar.dart';
import 'package:tasky_app/widgets/note_item.dart';
import 'package:tasky_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Notes',
            iconButton: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
