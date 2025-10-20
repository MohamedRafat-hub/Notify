import 'package:flutter/material.dart';
import 'package:tasky_app/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key , this.onTap});
  void Function()? onTap;
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
        child: Center(child: Text('Add' , style: TextStyle(color: Colors.black , fontSize: 20),)),
      ),
    );
  }
}