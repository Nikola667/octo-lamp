import "package:flutter/material.dart";

import "rezultat.dart";
import "kviz.dart";

// void main() {
//   runApp(MojaAplikacija());
// }
void main() => runApp(MojaAplikacija());

class MojaAplikacija extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MojaAplikacijaState();
  }
}

class _MojaAplikacijaState extends State<MojaAplikacija> {
  final _pitanja = const [
    {
      "pitanjeTekst": "Si tupav ili si tupav?",
      "odgovori": [
        {"text": "Tupav 100%", "bodovi": 3},
        {"text": "Tupav 120%", "bodovi": 6},
        {"text": "Tupav u pizdu materinu", "bodovi": 7},
        {"text": "Tupav do jaja", "bodovi": 5},
      ],
    },
    {
      "pitanjeTekst": "Zakaj si tak tupav?",
      "odgovori": [
        {"text": "Jer sam tupav", "bodovi": 10},
        {"text": "TTTTi si tupav", "bodovi!": 25},
        {"text": "Jebemti aplikaciu tupavu", "bodovi": 3},
        {"text": "Za koji kurac?", "bodovi": 1},
      ],
    },
    {
      "pitanjeTekst": "Zakaj si bezobrazan?",
      "odgovori": [
        {"text": "Ti si!", "bodovi": 16},
        {"text": "Kaj govoriš to postojiš", "bodovi": 8},
        {"text": "Mrš!", "bodovi": 2},
        {"text": "Vježbaj, pizda ti materina!", "bodovi": 10},
      ],
    },
  ];
  var _pitanjeIndex = 0;
  var _ukupnoBodova = 0;

  void _resetirajKviz() {
    setState(() {
      _pitanjeIndex = 0;
      _ukupnoBodova = 0;
    });
  }

  void _odgovorPitanje(int bodovi) {
    _ukupnoBodova += bodovi;
    setState(() {
      _pitanjeIndex = _pitanjeIndex + 1;
    });
    print(_pitanjeIndex);
    if (_pitanjeIndex < _pitanja.length) {
      print("Kam buš? Neje gotovo");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Seksi prva"),
        ),
        body: _pitanjeIndex < _pitanja.length
            ? Kviz(
                odgovorPitanje: _odgovorPitanje,
                pitanjeIndex: _pitanjeIndex,
                pitanja: _pitanja,
              )
            : Rezultat(_ukupnoBodova, _resetirajKviz),
      ),
    );
  }
}
