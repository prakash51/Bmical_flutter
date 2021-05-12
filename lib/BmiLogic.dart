import 'package:flutter/cupertino.dart';
import 'dart:math';
class Calucalate
{
  Calucalate({@required this.Weight,@required this.height});
  final int Weight;
  final int height;
  double _bmi;
  String Calucalatebmi()
  {
    _bmi= Weight/ pow( height/100 ,2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult()
  {
    if(_bmi>=25)
      return "Overweight";
    else if(_bmi>18)
      return "normal";
    else
      return "Underweight";
  }

  String getinter()
  {
    if(_bmi>=25)
      return "You have Overweight body. Try to excerise more";
    else if(_bmi>18)
      return "You have normal body. Good job ";
    else
      return "You have Underweight body. Try to eat bit more";
  }


}