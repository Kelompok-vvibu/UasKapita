import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Jawab extends StatelessWidget {
  final Function jawaban;
  final String textJawab;
  Jawab(this.jawaban, this.textJawab);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.1, 0.4],
        colors: [
          Color(0xFF3594DD),
          Color(0xFF4563DB),
        ],
      )),
      width: double.infinity,
      height: 75,
      child: FlatButton(
        color: Colors.transparent,
        textColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: jawaban,
        child: Text(
          textJawab,
          style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.black, fontSize: 20)),
        ),
      ),
    );
  }
}
