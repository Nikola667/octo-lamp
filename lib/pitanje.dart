import 'package:flutter/material.dart';

class Upit extends StatelessWidget {
  final String pitanjeTekst;

  Upit(this.pitanjeTekst);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
        pitanjeTekst,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
