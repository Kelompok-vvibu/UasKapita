import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

class Mencegah extends StatefulWidget {
  @override
  _MencegahState createState() => _MencegahState();
}

class _MencegahState extends State<Mencegah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('asset/cegahCorona.png'),
                  ),

                  // dibawah ini container baru di dalam column

                  Positioned(
                    bottom: 260,
                    child: Container(
                      color: Colors.black26,
                      padding: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Lindungi diri dan orang lain di sekitar Anda dengan mengetahui fakta-fakta terkait virus ini dan mengambil langkah pencegahan yang sesuai. Ikuti saran yang diberikan oleh badan kesehatan publik lokal Anda.",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              height: 1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //masih bisa di isi container column
                ],
              ),
            ),

            //Container baru diluar column

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 10.0,
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.indigo, Colors.deepPurple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Column(
                              children: <Widget>[
                                BorderedText(
                                  strokeWidth: 5.0,
                                  child: Text(
                                    "MENCUCI TANGAN LEBIH SERING",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "Bersihkan tangan Anda secara rutin.",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "Gunakan sabun dan air, atau ",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "cairan pembersih tangan berbahan alkohol.",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 150,
                            height: 150,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/mencuciTangan.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-----------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 10.0,
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.indigo, Colors.deepPurple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              children: <Widget>[
                                BorderedText(
                                  strokeWidth: 5.0,
                                  child: Text(
                                    "MENJAGA JARAK AMAN",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "Selalu jaga jarak yang aman dengan orang",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "yang batuk atau bersin. ",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 150,
                            height: 150,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/jagaJarak.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-----------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 10.0,
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.indigo, Colors.deepPurple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              children: <Widget>[
                                BorderedText(
                                  strokeWidth: 5.0,
                                  child: Text(
                                    "JANGAN MENYENTUH WAJAH",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "Jangan sentuh mata, hidung, atau mulut Anda.",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 150,
                            height: 150,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/menyentuhWajah.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-----------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 10.0,
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.indigo, Colors.deepPurple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              children: <Widget>[
                                BorderedText(
                                  strokeWidth: 5.0,
                                  child: Text(
                                    "MENUTUP MULUT DENGAN SIKU",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "Saat Anda batuk atau bersin,",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "tutup mulut dan hidung dengan lengan anda",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "atau tisu.",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 150,
                            height: 150,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/menutupMulut.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //-----------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.black12,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 10.0,
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.indigo, Colors.deepPurple],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Column(
                              children: <Widget>[
                                BorderedText(
                                  strokeWidth: 5.0,
                                  child: Text(
                                    "TETAP DIRUMAH",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "Tetaplah di rumah",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "jika Anda merasa tidak enak badan.",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "Jika Anda demam, batuk, atau kesulitan bernapas",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                BorderedText(
                                  strokeWidth: 4.0,
                                  child: Text(
                                    "segera hubungi medis.",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 150,
                            height: 150,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/tetapDirumah.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Material(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  splashColor: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      'Saya mengerti',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
