import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Jawab extends StatelessWidget {
  final Function jawaban;
  final String textJawab;
  Jawab(this.jawaban, this.textJawab);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.fromLTRB(100, 20, 100, 10),
      decoration: BoxDecoration(

          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.1, 0.4],
        colors: [
          Colors.lightBlueAccent,
          Colors.lightBlue,
        ],
      )),
      width: double.infinity,
      height: 75,
      child: Container(

        child: FlatButton(
          color: Colors.transparent,
          textColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.white,
          onPressed: jawaban,
          child: Text(
            textJawab,
            style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        ),
      ),
    );
  }
}