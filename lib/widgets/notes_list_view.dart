import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:tasky_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:tasky_app/models/note_model.dart';
import 'package:tasky_app/widgets/note_item.dart';

import '../constants.dart';

class NotesListView extends StatelessWidget {
  NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<NoteModel>notes = BlocProvider.of<GetNotesCubit>(context).notes ?? [];
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero, itemBuilder: (context, index) {
            return NoteItem();
          }),
        );
      },
    );
  }
}