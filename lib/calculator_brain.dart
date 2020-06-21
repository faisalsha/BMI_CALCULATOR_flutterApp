import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;


  String CalculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >=25){
      return 'OverWeight ';
    }
    else if(_bmi >18.5){
      return 'Normal';

    }
    else{
      return 'UnderWeight ';
    }
  }

  String getIntrepretation(){

    if(_bmi >=25){
      return 'You have a higher than normal body weight .Try to exercise more .';
    }
    else if(_bmi >18.5){
      return 'You have a Normal Body Weight. Good Job !';

    }
    else{
      return 'You have a lower than normal body weight .Try to Eat more .';
    }
  }

}