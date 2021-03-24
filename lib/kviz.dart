import "package:flutter/material.dart";
import "pitanje.dart";
import "odgovori.dart";

class Kviz extends StatelessWidget {
  final List<Map<String, Object>> pitanja;
  final int pitanjeIndex;
  final Function odgovorPitanje;
  Kviz(
      {@required this.pitanja,
      @required this.odgovorPitanje,
      @required this.pitanjeIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Upit(
          pitanja[pitanjeIndex]["pitanjeTekst"],
        ),
        ...(pitanja[pitanjeIndex]["odgovori"] as List<Map<String, Object>>)
            .map((odgovori) {
          return Odgovori(
              () => odgovorPitanje(odgovori["bodovi"]), (odgovori["text"]));
        }).toList()
      ],
    );
  }
}
