import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:tasky_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:tasky_app/models/note_model.dart';
import 'package:tasky_app/widgets/note_item.dart';

import '../constants.dart';

class NotesListView extends StatefulWidget {
  NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        List<NoteModel>notes = BlocProvider.of<GetNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
            itemCount: notes.length,
              padding: EdgeInsets.zero, itemBuilder: (context, index) {
            return NoteItem(
              noteModel: notes[index],
            );
          }),
        );
      },
    );
  }
}