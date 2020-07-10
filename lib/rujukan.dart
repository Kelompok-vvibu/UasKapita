import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Rujukan extends StatefulWidget {
  @override
  _RujukanState createState() => _RujukanState();
}

class _RujukanState extends State<Rujukan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rumah Sakit Rujukan"),
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
          ),
        ),
        child: ListView(
          children: <Widget>[
            Image(
              image: AssetImage('asset/rumahRujukan.png'),
            ),

            //rumah sakit pertama
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 300,
                      child: Column(children: <Widget>[
                        Text(
                          "Rumah Sakit ini merupakan milik pemkot Kota Bekasi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        )
                      ])),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 2,
                      child: Container(
                        width: 350,
                        height: 70,
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
                        child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(20),
                              //ganti urlnya saja
                              onTap: () async {
                                const url =
                                    'https://www.google.com/maps/place/RSUD+dr.+Chasbullah+Abdulmajid+Kota+Bekasi/@-6.2418136,107.0007292,15z/data=!4m2!3m1!1s0x0:0x7e4facafc50fe01d?sa=X&ved=2ahUKEwjE7v_C9_vpAhWWbSsKHU2hB20Q_BIwCnoECBEQCA';

                                if (await canLaunch(url)) {
                                  await launch(url, forceWebView: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              //ganti nama Rumah sakit sesuai google map
                              child: Center(
                                  child: Text(
                                      "RSUD DR. CHASBULLAH ABDULMAJID KOTA BEKASI",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700))),
                            )),
                      ),
                    ),
                  ),
                  //rumah sakit kedua
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 2,
                      child: Container(
                        width: 350,
                        height: 70,
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
                        child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(20),
                              //ganti urlnya saja
                              onTap: () async {
                                const url =
                                    'https://www.google.com/maps/place/RSUD+TIPE+D+JATI+SAMPURNA/@-6.3636166,106.9214978,15z/data=!4m5!3m4!1s0x0:0xa71cdd9ac9f21ab0!8m2!3d-6.3636166!4d106.9214978';

                                if (await canLaunch(url)) {
                                  await launch(url, forceWebView: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              //ganti nama Rumah sakit sesuai google map
                              child: Center(
                                  child: Text("RSUD TIPE D JATI SAMPURNA",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700))),
                            )),
                      ),
                    ),
                  ),
                  //rumah sakit ketiga
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 2,
                      child: Container(
                        width: 350,
                        height: 70,
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
                        child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(20),
                              //ganti urlnya saja
                              onTap: () async {
                                const url =
                                    'https://www.google.com/maps/place/RSUD+Bantar+gebang/@-6.3146721,106.9845158,17z/data=!3m1!4b1!4m5!3m4!1s0x2e6993113c6ac971:0x183738509e270317!8m2!3d-6.3146721!4d106.9867045';

                                if (await canLaunch(url)) {
                                  await launch(url, forceWebView: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              //ganti nama Rumah sakit sesuai google map
                              child: Center(
                                  child: Text("RSUD BANTAR GEBANG",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700))),
                            )),
                      ),
                    ),
                  ),
                  //rumah sakit keempat
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 2,
                      child: Container(
                        width: 350,
                        height: 70,
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
                        child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              splashColor: Colors.black54,
                              borderRadius: BorderRadius.circular(20),
                              //ganti urlnya saja
                              onTap: () async {
                                const url =
                                    'https://www.google.com/maps/place/RSUD+Pondok+Gede/@-6.2828115,106.9115709,17z/data=!3m1!4b1!4m5!3m4!1s0x2e698d4d541b0c45:0xef4103f4cc73b090!8m2!3d-6.2828115!4d106.9137596';

                                if (await canLaunch(url)) {
                                  await launch(url, forceWebView: false);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              //ganti nama Rumah sakit sesuai google map
                              child: Center(
                                  child: Text("RSUD Pondok Gede",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700))),
                            )),
                      ),
                    ),
                  ),
                ]),

            Container(
                width: 150,
                height: 150,
                child: Image.asset('asset/call2.png', width: 100)),

            Container(
                color: Colors.white,
                child: Text(
                  "Konsultasi Call Center",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),

            Container(
              color: Colors.white70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                      onPressed: () => launch("tel://112"),
                      child: new Text("112")),
                  FlatButton(
                      onPressed: () => launch("tel://119"),
                      child: new Text("199")),
                ],
              ),
            ),
            Container(
                color: Colors.white,
                child: Text(
                    "hotline Pusat Informasi dan Koordinasi Covid-19 Kabupaten Bekasi (PIKOKABSI)",
                    textAlign: TextAlign.center)),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                      textColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.white,
                      onPressed: () => launch("tel://02189910039"),
                      child: new Text("02189910039")),
                  FlatButton(
                      textColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.white,
                      onPressed: () => launch("tel://08111139927"),
                      child: new Text("08111139927")),
                  FlatButton(
                      textColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.white,
                      onPressed: () => launch("tel://085283980119"),
                      child: new Text("085283980119")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
