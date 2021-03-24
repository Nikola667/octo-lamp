import "package:flutter/material.dart";

class Odgovori extends StatelessWidget {
  final Function pikniBogati;
  final String odgovorText;
  Odgovori(this.pikniBogati, this.odgovorText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
        ),
        child: Text(odgovorText),
        onPressed: pikniBogati,
      ),
    );
  }
}
