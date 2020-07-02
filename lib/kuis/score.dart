import 'package:flutter/material.dart';
import 'package:uas_kapitaselekta/homepage.dart';

class Score extends StatelessWidget {
  final int _totalHasil;
  Score(this._totalHasil);

  String get _totalScore {
    var hasilText;
    if (_totalHasil >= 80) {
      hasilText =
          'Tidak Aman Mohon Anda Hubungi Call Center Penanganan Covid-19 dan anda diwajibkan untuk kerumah sakit rujukan';
    } else if (_totalHasil <= 60) {
      hasilText =
          'Aman dan hubungi call center penanganan covid-19 untuk konsultasi lebih lanjut';
    } else {
      hasilText =
          'Aman Terkendali dan anda harus menjaga kebersihan dan kesehatan diruman';
    }
    return hasilText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 200),
            child: Center(
              child: Text(_totalScore),
            )),
        RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
        )
      ],
    );
  }
}
