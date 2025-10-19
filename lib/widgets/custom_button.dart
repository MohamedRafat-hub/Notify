import 'package:flutter/material.dart';
import 'package:tasky_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text('Add' , style: TextStyle(color: Colors.black , fontSize: 20),)),
    );
  }
}