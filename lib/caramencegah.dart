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
      appBar: AppBar(),
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
              padding: const EdgeInsets.all(5.0),
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
                              colors: [Colors.orange, Colors.orangeAccent],
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
                                  strokeWidth: 2.0,
                                  child: Text(
                                    "MENCUCI TANGAN LEBIH SERING",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Bersihkan tangan Anda secara rutin.",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Gunakan sabun dan air, atau ",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "cairan pembersih tangan berbahan alkohol.",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 200,
                            height: 200,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/hello.png'),
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
                                Text(
                                  "MENJAGA JARAK AMAN",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Selalu jaga jarak yang aman dengan orang",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "yang batuk atau bersin. ",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 200,
                            height: 200,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/hello.png'),
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
                                Text(
                                  "JANGAN MENYENTUH WAJAH",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Jangan sentuh mata, hidung, atau mulut Anda.",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 200,
                            height: 200,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/hello.png'),
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
                                Text(
                                  "MENUTUP MULUT DENGAN SIKU",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Saat Anda batuk atau bersin,",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "tutup mulut dan hidung dengan lengan anda",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "atau tisu.",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )),

                          //-----------------------------------------------------------------

                          Container(
                            width: 200,
                            height: 200,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/hello.png'),
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
                                Text(
                                  "TETAP DIRUMAH",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Tetaplah di rumah",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "jika Anda merasa tidak enak badan.",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "Jika Anda demam, batuk, atau kesulitan bernapas",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "segera hubungi medis.",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    height: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )),
                          Container(
                            width: 200,
                            height: 200,
                            child: ClipRect(
                              child: Image(
                                image: AssetImage('asset/hello.png'),
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
          ],
        ),
      ),
    );
  }
}
