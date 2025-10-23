import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tasky_app/cubits/get_notes_cubit/get_notes_cubit.dart';
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
        if (state is AddNoteSuccess) {
          BlocProvider.of<GetNotesCubit>(context).getAllNotes();
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
            ColorsListView(
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NoteModel note = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date:
                              '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    } else {
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
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


class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: color,
      ),
    ) : CircleAvatar(
      radius: 27,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  List<Color> colors = const [
    Colors.blue,
    Color(0xFFFF8F8F),
    Color(0xFFC2E2FA),
    Color(0xFFB7A3E3),
    Color(0xFFFBF3D1),
    Color(0xFF647FBC),
    Color(0xFF91ADC8),
    Color(0xFFFADA7A),
    Colors.orange,
    Colors.amberAccent,
    Colors.greenAccent,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child:  GestureDetector(
              onTap: (){
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                setState(() {

                });
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
