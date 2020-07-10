import 'package:flutter/material.dart';
import 'package:uas_kapitaselekta/kuis/score.dart';
import 'package:uas_kapitaselekta/kuis/test.dart';

class TestCovid extends StatefulWidget {
  @override
  _TestCovidState createState() => _TestCovidState();
}

class _TestCovidState extends State<TestCovid> {
  var _pertanyaanIndex = 0;
  var _totalHasil = 0;
  void _klikJawaban(int hasil) {
    _totalHasil += hasil;
    print('Total Hasil');
    setState(() {
      _pertanyaanIndex++;
    });

    print(_totalHasil);
    if (_pertanyaanIndex < _pertanyaan.length) {
      print("Masih ada soal");
    } else {
      print("selesai");
    }
  }

  var _pertanyaan = [
    {
      'textPertanyaan':
          'Apakah anda terdapat demam dengan suhu di atas 38 derajat Celcius?',
      'textJawab': [
        {'teks': 'Iya', 'hasil': 20},
        {'teks': 'Tidak', 'hasil': 0}
      ]
    },
    {
      'textPertanyaan': 'apakah anda batuk?',
      'textJawab': [
        {'teks': 'Iya', 'hasil': 20},
        {'teks': 'Tidak', 'hasil': 0}
      ]
    },
    {
      'textPertanyaan':
          'apakah anda merasakan sesak nafas  sampai merasa kesulitan untuk berbicara?',
      'textJawab': [
        {'teks': 'Iya', 'hasil': 20},
        {'teks': 'Tidak', 'hasil': 0}
      ]
    },
    {
      'textPertanyaan': 'apa terdapat riwayat kontak'
          '(Misalnya: berjabat tangan, mengobrol lama, berada dalam satu ruangan) dengan orang yang sudah diyatakan positif terinfeksi virus Corona?',
      'textJawab': [
        {'teks': 'Iya', 'hasil': 20},
        {'teks': 'Tidak', 'hasil': 0}
      ]
    },
    {
      'textPertanyaan':
          'apakah ada kontak( Misalnya: berjabat tangan, mengobrol lama, berada dalam satu ruangan) dengan orang yang memiki gejala flu, yaitu demam, batuk dan pilek atau dengan orang yang diduga terinfeksi virus Corona?',
      'textJawab': [
        {'teks': 'Iya', 'hasil': 20},
        {'teks': 'Tidak', 'hasil': 0}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(" "),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            )),
            child: ListView(children: <Widget>[
              Image(
                image: AssetImage('asset/testCovid19.png'),
              ),
              _pertanyaanIndex < _pertanyaan.length
                  ? Test(
                      klikJawaban: _klikJawaban,
                      pertanyaan: _pertanyaan,
                      pertanyaanIndex: _pertanyaanIndex,
                    )
                  : Score(_totalHasil)
            ]),
          )),
    );
  }
}
