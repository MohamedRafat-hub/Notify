import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tasky_app/widgets/add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => AddNoteCubit(),
          child: BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                  child: AddNoteForm()
              );
            },
          ),
        ),
      ),
    );
  }
}





