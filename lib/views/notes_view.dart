import 'package:flutter/material.dart';
import 'package:tasky_app/constants.dart';
import 'package:tasky_app/widgets/add_note_bottom_sheet.dart';
import 'package:tasky_app/widgets/tasks_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: KPrimaryColor,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
        child: Icon(Icons.add , color: Colors.black,size: 30,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      body: TasksViewBody(),
    );
  }
}



