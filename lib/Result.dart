import 'package:bmi_cal/BottomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';
import 'ReuseCard.dart';
import 'package:bmi_cal/BmiLogic.dart';
class result extends StatelessWidget {
  result({@required this.bmiResult,@required this.resultText,@required this.inter});
  final String bmiResult;
  final String resultText;
  final String inter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI calucaltor"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Text("Your Result",style: KtitleText,)),
          Expanded(
            flex: 5,
            child: ReusableCard(
              Colour: kActivecardcolor,
              Cardchild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(resultText.toUpperCase(),style: KWeightR,textAlign: TextAlign.center),
                  Text(bmiResult,style: KWeightV,textAlign: TextAlign.center,),
                  Text(inter,style: KweightM,textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          Expanded(child: BottomButton(onTap:(){Navigator.pop(context);},buttonTitle: "Recalucalte"),)
        ],
      ),
    );
  }
}
