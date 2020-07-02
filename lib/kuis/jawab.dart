import 'package:flutter/material.dart';

class Jawab extends StatelessWidget {
  final Function jawaban;
  final String textJawab;
  Jawab(this.jawaban, this.textJawab);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: jawaban,
        child: Text(
          textJawab,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
