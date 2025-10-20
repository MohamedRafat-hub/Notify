import 'package:flutter/material.dart';
import 'package:tasky_app/constants.dart';
import 'package:tasky_app/widgets/custom_button.dart';
import 'package:tasky_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState>formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
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
            onSaved: (value){
              title = value;
            },
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value){
              subTitle = value;
            },
          ),

          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
                }
              else
                {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
            },
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}



