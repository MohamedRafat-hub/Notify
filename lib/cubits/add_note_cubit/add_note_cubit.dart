import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:tasky_app/constants.dart';
import 'package:tasky_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color =  Colors.blue;
  addNote(NoteModel note) async
  {
    note.color = color.value;
   try {
     emit(AddNoteLoading());
     var notesBox = Hive.box<NoteModel>(KNotesBox);  // Reference on notesBox
      await notesBox.add(note);
      emit(AddNoteSuccess());
   }catch (e) {
     emit(AddNoteFailure(e.toString()));
   }
  }
}
// 1 create cubit
// 2 create states
// 3 logic