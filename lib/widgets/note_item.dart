import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tasky_app/models/note_model.dart';
import 'package:tasky_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNoteView();
        }));
      },
      child: Container(
        margin:  const EdgeInsets.only(bottom: 8),
        padding: EdgeInsets.only(top: 16 , bottom: 16 , left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                 noteModel.subTitle,
                  style: TextStyle(fontSize: 16, color:  Colors.black.withValues(alpha: .4)),
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                noteModel.date,
                style: TextStyle(color: Colors.black.withValues(alpha: .4)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}