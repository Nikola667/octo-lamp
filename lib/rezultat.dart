import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';

class Rezultat extends StatelessWidget {
  final int rezultatBodovi;
  final Function resetSve;
  Rezultat(this.rezultatBodovi, this.resetSve);
  String get rezultatFraza {
    String rezultatFraza = "Nemam reči";
    if (rezultatBodovi <= 12) {
      rezultatFraza = "Jebemti, čudan si!";
    } else if (rezultatBodovi <= 20) {
      rezultatFraza = "Opak si ti jebač";
    } else if (rezultatBodovi <= 30) {
      rezultatFraza = "O hoooo!";
    } else {
      rezultatFraza = "Extra!";
    }
    return rezultatFraza;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            rezultatFraza,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Aj ponovo!"),
            onPressed: resetSve,
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.orange)),
          ),
        ],
      ),
    );
  }
}
