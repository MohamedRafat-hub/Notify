part of 'get_notes_cubit.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitial extends GetNotesState {}
final class GetNotesSuccess extends GetNotesState {
 final List<NoteModel>notes;
  GetNotesSuccess(this.notes);
}
