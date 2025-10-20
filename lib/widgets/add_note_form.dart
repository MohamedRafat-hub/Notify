import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tasky_app/models/note_model.dart';
import 'package:tasky_app/widgets/custom_button.dart';
import 'package:tasky_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Fail to add note please try again'),
            ),
          );
        }
        if(state is AddNoteSuccess)
          {
            Navigator.pop(context);
          }
      },
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(
          spacing: 15,
          children: [
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
              onSaved: (value) {
                subTitle = value;
              },
            ),
            CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  NoteModel note = NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.g);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
