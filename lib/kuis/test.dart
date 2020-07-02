import 'package:flutter/material.dart';
import 'jawab.dart';
import 'pertanyaan.dart';

class Test extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final int pertanyaanIndex;
  final Function klikJawaban;
  Test(
      {@required this.pertanyaan,
      @required this.pertanyaanIndex,
      @required this.klikJawaban});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pertanyaan(pertanyaan[pertanyaanIndex]['textPertanyaan']),
        ...(pertanyaan[pertanyaanIndex]['textJawab']
                as List<Map<String, Object>>)
            .map((textJawab) {
          return Jawab(
              () => klikJawaban(textJawab['hasil']), textJawab['teks']);
        }).toList()
      ],
    );
  }
}
