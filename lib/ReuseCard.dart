import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({ @required this.Colour,@required  this.Cardchild,@required  this.onPress});
  final Widget Cardchild;
  final Color Colour;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colour,
        ),
        margin: EdgeInsets.all(15),
        child: Cardchild,
      ),
    );
  }
} // We using more containers so here we used extract widget technique
