import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'ReuseCard.dart';
import 'Constants.dart';
import 'Result.dart';
import 'BottomButton.dart';
import 'package:bmi_cal/BmiLogic.dart';

Color malecolor = kInactivecardcolor, femalecolor = kInactivecardcolor;
enum gender { male, female }
gender g;
int height = 120;
int weight = 60;
int Age = 15;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      Colour: g == gender.male
                          ? kActivecardcolor
                          : kInactivecardcolor,
                      Cardchild: Iconcontent(
                        i: FontAwesomeIcons.mars,
                        t: 'Male',

                      ),
                      onPress: () {
                        setState(() {
                          g = gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          g = gender.female;
                        });
                      },
                      Colour: g == gender.female
                          ? kActivecardcolor
                          : kInactivecardcolor,
                      Cardchild: Iconcontent(
                        i: FontAwesomeIcons.venus,
                        t: 'Female',
                      ),
                    ),
                  )
                ],
              ),
            ), // gender
            Expanded(
              child: ReusableCard(
                Colour: kActivecardcolor,
                Cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: kLabeltextstyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: kNumtextstyle,
                        ),
                        Text(
                          'cm',
                          style: kLabeltextstyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbColor: Colors.pink,
                        activeTrackColor: Colors.white,
                        overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 30),
                        thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15),
                      ),
                      child: Slider(
                        min: 120,
                        max: 400,
                        inactiveColor: Color(0xFF111326),
                        value: height.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            height = value.round();

                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ), // height
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child:  ReusableCard(
                      Colour: kActivecardcolor,
                      Cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: kLabeltextstyle,
                          ),
                          Text(
                            '$weight',
                            style: kNumtextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onTap: () {
                                  setState(() {
                                    weight++;
                                    print('W Plus tapped');
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ), //weight
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      Colour: kActivecardcolor,
                      Cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: kLabeltextstyle,
                          ),
                          Text(
                            '$Age',
                            style: kNumtextstyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onTap: () {
                                  setState(() {
                                    Age++;
                                    print('W Plus tapped');
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onTap: () {
                                  setState(() {
                                    Age--;
                                  });
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )  //Age
                ],
              ),
            ),// weight and age
            BottomButton(onTap: (){
              Calucalate c = new Calucalate(Weight: weight, height: height);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> result(bmiResult: c.Calucalatebmi(),resultText: c.getresult(),inter: c.getinter(),)));
            }, buttonTitle: "Calucalate",)
            //Resuable just like function we passing
          ],
        ));
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onTap});
  final IconData icon;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      onPressed: onTap,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    ); //Customised Button RawMaterialButton is used in buliding of Floating button
  }
}
