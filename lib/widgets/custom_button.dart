import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasky_app/constants.dart';
import 'package:tasky_app/cubits/add_note_cubit/add_note_cubit.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, this.isLoading = false});

  void Function()? onTap;
  bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
                  'Add',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
        ),
      ),
    );
  }
}
