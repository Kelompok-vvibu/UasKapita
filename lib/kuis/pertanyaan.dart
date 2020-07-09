import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pertanyaan extends StatelessWidget {
  final String textPertanyaan;
  Pertanyaan(this.textPertanyaan);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      padding: EdgeInsets.all(7),
      child: Text(textPertanyaan,
          textAlign: TextAlign.center,
          style: GoogleFonts.acme(
              textStyle: TextStyle(color: Colors.black, fontSize: 20))),
    );
  }
}
