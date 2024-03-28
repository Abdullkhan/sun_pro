import 'package:flutter/material.dart';
import 'package:sun_pro/Utilities/appColors.dart';

class CustomButton extends StatelessWidget {
  final String languageName;
  final Gradient? gradient;
  final Color? buttonColor;
  CustomButton({
    required this.languageName,
    this.buttonColor,
    this.gradient = const LinearGradient(
      colors: [
        AppColors.buttonColor1,
        AppColors.buttonColor2,
      ],
      begin: Alignment.topRight,
      end: Alignment.topLeft,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 0.1,
              spreadRadius: 0.5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          gradient: gradient,
        ),
        child: Center(
          child: Text(
            languageName,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
