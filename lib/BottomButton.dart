import 'package:flutter/material.dart';
import 'package:bmi_cal/Constants.dart';
import 'Result.dart';
class BottomButton extends StatelessWidget {
  @override
  BottomButton({ @required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: kBottommargin,
        color: kBottomcolor,
        height: kBottombuttonheight,
        width: double.infinity,
        child: TextButton(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
