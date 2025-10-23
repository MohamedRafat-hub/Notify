import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:tasky_app/models/note_model.dart';

import '../../constants.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());
  List<NoteModel>? notes;
  void getAllNotes() {
      var notesBox = Hive.box<NoteModel>(KNotesBox);
       notes = notesBox.values.toList();
       emit(RefreshNotesSuccess());
       log('${notes?.length ?? 0}');
    }
}
