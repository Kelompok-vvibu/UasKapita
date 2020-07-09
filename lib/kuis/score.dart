import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_kapitaselekta/database/riwayat.dart';
import 'package:uas_kapitaselekta/homepage.dart';

class Score extends StatelessWidget {
  final int _totalHasil;
  Score(this._totalHasil);

  String get totalScore {
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
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                totalScore,
                style: GoogleFonts.russoOne(textStyle: TextStyle(fontSize: 20)),
                textAlign: TextAlign.center,
              ),
            )),
        RaisedButton(
            onPressed: () {
              final data = ClipboardData(text: totalScore);
              Clipboard.setData(data);
            },
            child: Text("Copy")),
        RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          child: Text("Homepage"),
        ),
        Center(
          child: Text(
            "Klik Copy setelah itu Riwayat Untuk Menambahkan Data Hasil Test Untuk Memonitoring Diri Anda",
            style: GoogleFonts.markaziText(textStyle: TextStyle(fontSize: 20)),
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
          child: Text("Riwayat"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Riwayat();
            }));
          },
        ),
        Center(
            child: Image.asset(
          'asset/doctor.png',
          width: 300,
        ))
      ],
    );
  }
}
