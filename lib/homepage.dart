import 'package:flutter/material.dart';
import 'package:uas_kapitaselekta/caramencegah.dart';
import 'package:uas_kapitaselekta/covid19.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uas_kapitaselekta/protokol.dart';
import 'package:uas_kapitaselekta/rujukan.dart';
import 'package:uas_kapitaselekta/testcovid.dart';

import 'covid19.dart';

Future<Covid> connectToAPI() async {
  String apiURL = "https://api.kawalcorona.com/indonesia/";
  var apiResult = await http.get(apiURL);
  var jsonObject = jsonDecode(apiResult.body);

  return Covid.createCovid(jsonObject[0]);
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Covid> futureCovid;
  @override
  void initState() {
    super.initState();
    futureCovid = connectToAPI();
  }

  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
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
        )),
        child: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.transparent, blurRadius: 10.0)
                      ],
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage('asset/bg-appbar.png'),
                          fit: BoxFit.cover),
                    ),
                    height: divheight / 1 * 0.3,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 5.0,
                                ),
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.orangeAccent,
                                      Colors.deepOrangeAccent
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            height: 70,
                            width: 130,
                            margin: EdgeInsets.fromLTRB(2, 20, 2, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Positif",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                                FutureBuilder<Covid>(
                                  future: futureCovid,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return Text(snapshot.data.positif,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30));
                                    } else if (snapshot.error) {
                                      return Text("${snapshot.error}");
                                    }
                                    return Container();
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 5.0,
                                ),
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                    colors: [Colors.lightGreen, Colors.green],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            height: 70,
                            width: 130,
                            margin: EdgeInsets.fromLTRB(2, 20, 2, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Sembuh",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                                FutureBuilder<Covid>(
                                  future: futureCovid,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return Text(snapshot.data.sembuh,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30));
                                    } else if (snapshot.error) {
                                      return Text("${snapshot.error}");
                                    }
                                    return Container();
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 5.0,
                                ),
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
                                Text("Meninggal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700)),
                                FutureBuilder<Covid>(
                                  future: futureCovid,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return Text(snapshot.data.meninggal,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30));
                                    } else if (snapshot.error) {
                                      return Text("${snapshot.error}");
                                    }
                                    return Container();
                                  },
                                ),
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
                          Text(
                            "CORONA VIRUS (COVID-19)",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Coronavirus atau virus corona merupakan keluarga besar virus yang menyebabkan infeksi saluran pernapasan atas ringan hingga sedang, seperti penyakit flu.",
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
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  gradient: LinearGradient(
                      colors: [Colors.amberAccent, Colors.amber],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              height: 200,
              width: 130,
              margin: EdgeInsets.fromLTRB(2, 20, 2, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          splashColor: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Rujukan();
                            }));
                          },
                          child: Center(
                            child: Text(
                              'Rumah Sakit Rujukan Kota Bekasi',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          splashColor: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Protokol();
                            }));
                          },
                          child: Center(
                            child: Text(
                              'Protokol Covid-19 Indonesia',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          splashColor: Colors.black54,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Mencegah();
                            }));
                          },
                          child: Center(
                            child: Text(
                              'Cara Menghindari Virus Corona',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 2,
              child: Container(
                height: 70,
                width: 130,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 5.0,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                        colors: [Colors.amberAccent, Colors.amber],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    splashColor: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return TestCovid();
                      }));
                    },
                    child: Center(
                      child: Text('Test Covid - 19',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ),
              ),
            ),

            //container baru
          ],
        ),
      ),
    );
  }
}
