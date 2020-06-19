import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height=150;
  int weight=40;
//  Color maleCardColour=inactiveCardColour;
//  Color femaleCardColour=inactiveCardColour;
//
//
//  void updateColor(Gender selected_gender){
//    if(selected_gender==Gender.male){
//      if(maleCardColour==inactiveCardColour){
//        maleCardColour=activeCardColour;
//        femaleCardColour=inactiveCardColour;
//      }else{
//        maleCardColour=inactiveCardColour;
//      }
//    }
//
//    if(selected_gender==Gender.female){
//      if(femaleCardColour==inactiveCardColour){
//        femaleCardColour=activeCardColour;
//        maleCardColour=inactiveCardColour;
//      }else{
//        femaleCardColour=inactiveCardColour;
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelText,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(),style: kNumberTextStyle,),
                      Text('cms',style: kLabelText,)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor:Colors.white,
                      overlayColor:Color(0x29EB1555) ,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0 ,

                      ),
                      overlayShape:RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 150.0,
                      max:220.0,
//                      activeColor:Colors.white,
                      inactiveColor:Color(0xFF8D8E98) ,
                      onChanged: (double newValue){
                        setState(() {
                          height=newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kActiveCardColour,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT',style: kLabelText,),
                          Text(weight.toString(),style: kNumberTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              FloatingActionButton(
                                  backgroundColor: Color(0xFF4C4F5E),
                                  child:Icon(Icons.add,color: Colors.white,)
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                  backgroundColor: Color(0xFF4C4F5E),
                                  child:Icon(Icons.add,color: Colors.white,)
                              ),

                            ],

                          )
                        ],
                      ),
                )),
                Expanded(
                    child: ReusableCard(
                  colour: kActiveCardColour,
                )),
              ],
            )),
            Container(
              color: kBottomContainerColour,
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}
