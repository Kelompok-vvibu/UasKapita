import 'package:flutter/material.dart';


class Mencegah extends StatefulWidget {
  @override
  _MencegahState createState() => _MencegahState();
}

class _MencegahState extends State<Mencegah> {


  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(),
      body:  Container(
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
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,

                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 5.0,),
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                                colors: [Colors.orangeAccent, Colors.deepOrangeAccent],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        height: 70,
                        width: 350,
                        margin: EdgeInsets.fromLTRB(2, 20, 2, 20),
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("CARA MENCEGAH VIRUS CORONA",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),

                          ],
                        ),
                      ),




                    ]),
                  ),


                  // dibawah ini container baru di dalam column

                  Positioned(
                    bottom: 260,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[

                          Text("Lindungi diri dan orang lain di sekitar Anda dengan mengetahui fakta-fakta terkait virus ini dan mengambil langkah pencegahan yang sesuai. Ikuti saran yang diberikan oleh badan kesehatan publik lokal Anda.",
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

            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 5.0,),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      colors: [Colors.indigo, Colors.deepPurple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 90,
              width: 130,
              margin: EdgeInsets.fromLTRB(2, 20, 2, 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text("MENCUCI TANGAN LEBIH SERING",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                  Text("Bersihkan tangan Anda secara rutin. Gunakan sabun dan air, atau cairan pembersih tangan berbahan alkohol.",
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


            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 5.0,),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      colors: [Colors.indigo, Colors.deepPurple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 90,
              width: 130,
              margin: EdgeInsets.fromLTRB(2, 20, 2, 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text("MENJAGA JARAK AMAN",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                  Text("Selalu jaga jarak yang aman dengan orang yang batuk atau bersin.",
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


            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 5.0,),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      colors: [Colors.indigo, Colors.deepPurple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 90,
              width: 130,
              margin: EdgeInsets.fromLTRB(2, 20, 2, 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text("JANGAN MENYENTUH WAJAH",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                  Text("Jangan sentuh mata, hidung, atau mulut Anda.",
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


            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 5.0,),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      colors: [Colors.indigo, Colors.deepPurple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 90,
              width: 130,
              margin: EdgeInsets.fromLTRB(2, 20, 2, 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text("MENUTUP MULUT DENGAN SIKU",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                  Text("Saat Anda batuk atau bersin, tutup mulut dan hidung dengan lengan Anda atau tisu.",
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


            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent,width: 5.0,),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      colors: [Colors.indigo, Colors.deepPurple],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 90,
              width: 130,
              margin: EdgeInsets.fromLTRB(2, 20, 2, 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Text("TETAP DIRUMAH",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                  Text("CTetaplah di rumah jika Anda merasa tidak enak badan. Jika Anda demam, batuk, atau kesulitan bernapas segera cari bantuan medis. Hubungi terlebih dahulu. ",
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





            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 5.0,),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      colors: [Colors.amberAccent, Colors.amber],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 70,
              width: 130,
              margin: EdgeInsets.fromLTRB(2, 20, 2, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("TEST COVID - 19",
                      style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,
                        fontSize: 20,)),
                ],
              ),
            ),

            //container baru

          ],
        ),

      ),
    );
  }
}