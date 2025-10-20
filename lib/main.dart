import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tasky_app/constants.dart';
import 'package:tasky_app/models/note_model.dart';
import 'package:tasky_app/views/notes_view.dart';

void main() async
{
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(KNotesBox);
  runApp(TaskyApp());
}

class TaskyApp extends StatelessWidget {
  const TaskyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotesView(),
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
    );
  }
}
