import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.onPrassed, this.icon});

  final onPrassed;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: RawMaterialButton(
        elevation: 0.0,
        child: Icon(icon),
        onPressed: onPrassed,
        constraints: BoxConstraints.tightFor(
          width: 50.0,
          height: 50.0,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
      ),
    );
  }
}
