part of 'get_notes_cubit.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitial extends GetNotesState {}
final class RefreshNotesSuccess extends GetNotesState {}


