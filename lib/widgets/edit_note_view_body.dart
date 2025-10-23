import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:tasky_app/models/note_model.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key, required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  // String? title , subTitle;
  late TextEditingController titleController;
  late TextEditingController contentController;
  @override
  void initState() {
    titleController = TextEditingController(text: widget.note.title);
    contentController = TextEditingController(text: widget.note.subTitle);
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }
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
            title: 'Edit Note',
            iconButton: IconButton(onPressed: (){
              widget.note.title = titleController.text;
              widget.note.subTitle = contentController.text;
              widget.note.save();
              BlocProvider.of<GetNotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            }, icon: Icon(Icons.check)),
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(controller: titleController,hint: 'Title'),
          SizedBox(
            height: 15,
          ),
          CustomTextField(controller: contentController,hint: 'Content' , maxLines: 5,),
        ],
      ),
    );
  }
}