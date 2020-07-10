import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pertanyaan extends StatelessWidget {
  final String textPertanyaan;
  Pertanyaan(this.textPertanyaan);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white10,
      padding: EdgeInsets.all(7),
      margin: EdgeInsets.fromLTRB(2, 10, 2, 10),
      child: BorderedText(
        strokeWidth: 3.0,
        child: Text(textPertanyaan,
            textAlign: TextAlign.center,
            style: GoogleFonts.bebasNeue(
                textStyle: TextStyle(color: Colors.white, fontSize: 30))),
      ),
    );
  }
}
