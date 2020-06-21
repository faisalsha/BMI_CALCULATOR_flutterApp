import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon,@required this.OnPressed});
  final IconData icon;
  final Function OnPressed;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),

      elevation: 6.0,
      disabledElevation: 6.0,

      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),


      onPressed: OnPressed,
      shape:CircleBorder(),
      fillColor:Color(0xFF4C4F5E) ,
    );
  }
}
