import 'package:flutter/material.dart';
import 'Constants.dart';
class Iconcontent extends StatelessWidget {
  Iconcontent({@required this.i, @required this.t});
  final IconData i;
  final String t;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$t',
          style: kLabeltextstyle,
        ),
      ],
    );
  }
}