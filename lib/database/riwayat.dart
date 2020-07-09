import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_kapitaselekta/homepage.dart';
import 'dart:async';
import 'crud.dart';
import 'class.dart';
import 'enter.dart';

class Riwayat extends StatefulWidget {
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  CRUD dbHelper = CRUD();
  Future<List<DataHasil>> future;
  @override
  void initState() {
    super.initState();
    updateListView();
  }

  void updateListView() {
    setState(() {
      future = dbHelper.getHasilanList();
    });
  }

  Future<DataHasil> navigateToViewHasil(
      BuildContext context, DataHasil hasilan) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return ViewHasil(hasilan);
    }));
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              child: Text(
                "Tambah Data",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11),
              ),
              tooltip: 'Tambah Data',
              onPressed: () async {
                var hasilan = await navigateToViewHasil(context, null);
                if (hasilan != null) {
                  int result = await dbHelper.insert(hasilan);
                  if (result > 0) {
                    updateListView();
                  }
                }
              },
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              heroTag: null,
              child: Text(
                "Kembali",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11),
              ),
              tooltip: 'Kembali',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        appBar: AppBar(
          title: Text("Riwayat Test Kuis"),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  });
            },
          ),
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
              FutureBuilder<List<DataHasil>>(
                future: future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                        children:
                            snapshot.data.map((todo) => cardo(todo)).toList());
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ])));
  }

  Card cardo(DataHasil hasilan) {
    return Card(
        color: Colors.white,
        elevation: 3.0,
        child: ListTile(
          title: Text(
            hasilan.dbHasil,
            style: GoogleFonts.inter(),
          ),
          trailing: GestureDetector(
            child: Icon(Icons.delete),
            onTap: () async {
              int result = await dbHelper.delete(hasilan);
              if (result > 0) {
                updateListView();
              }
            },
          ),
          onTap: () async {
            var hasilan2 = await navigateToViewHasil(context, hasilan);
            if (hasilan2 != null) {
              var dbHelper;
              int result = await dbHelper.update(hasilan2);
              if (result > 0) {
                updateListView();
              }
            }
          },
        ));
  }
}
