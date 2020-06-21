import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'resuable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.intrepretation,@required this.resultText});

  final String bmiResult;
  final String resultText;
  final String intrepretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(

            child: Container(
              padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result',style: kTextStyle,)),
          ),
          Expanded(
            flex:5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),style: kResultTextStyle,),
                  Text(bmiResult,style: kBMITextStyle,),
                  Text(intrepretation,
                    style: kBMIBodyStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}
