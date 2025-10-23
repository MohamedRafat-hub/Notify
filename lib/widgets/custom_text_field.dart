import 'package:flutter/material.dart';
import 'package:tasky_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint,  this.maxLines = 1 , this.onSaved , this.controller});
  final String hint;
  final int maxLines;
  TextEditingController? controller;
  void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onSaved,
      validator: (data){
        if(data == null || data.isEmpty)
          {
            return 'Field is required';
          }
        else
          {
            return null;
          }
      },
      cursorColor: KPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: KPrimaryColor),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(KPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([Color color = Colors.white]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }
}