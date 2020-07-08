import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text("Riwayat Test Kuis"),
      ),
      body: FutureBuilder<List<DataHasil>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
                children: snapshot.data.map((todo) => cardo(todo)).toList());
          } else {
            return SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
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
    );
  }

  Card cardo(DataHasil hasilan) {
    return Card(
        color: Colors.white,
        elevation: 2.0,
        child: ListTile(
          title: Text(hasilan.dbHasil),
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
