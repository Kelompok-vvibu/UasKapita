import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String textPertanyaan;
  Pertanyaan(this.textPertanyaan);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white.withOpacity(0.25),
      padding: EdgeInsets.all(7),
      child: Text(textPertanyaan, style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700
      ),
      textAlign: TextAlign.center,
      ),
    );
  }
}
