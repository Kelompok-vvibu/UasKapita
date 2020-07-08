import 'package:flutter/material.dart';
import 'package:uas_kapitaselekta/database/riwayat.dart';
import 'class.dart';
import 'package:clipboard/clipboard.dart';

class ViewHasil extends StatefulWidget {
  final DataHasil hasilan;

  ViewHasil(this.hasilan);
  @override
  ViewHasilState createState() => ViewHasilState(this.hasilan);
}

class ViewHasilState extends State<ViewHasil> {
  String pasteValue = '';
  DataHasil hasilan;
  TextEditingController dbHasilController = TextEditingController();

  ViewHasilState(this.hasilan);

  @override
  Widget build(BuildContext context) {
    if (hasilan != null) {
      dbHasilController.text = hasilan.dbHasil;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Menyimpan Data"),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: TextField(
                  controller: dbHasilController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Pastekan Hasil Anda',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  FlutterClipboard.paste().then((value) {
                    setState(() {
                      dbHasilController.text = value;
                      pasteValue = value;
                    });
                  });
                },
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text('PASTE')),
                ),
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  if (hasilan == null) {
                    hasilan = DataHasil(dbHasilController.text);
                  } else {
                    hasilan.dbHasil = dbHasilController.text;
                  }
                  Navigator.pop(context, hasilan);
                },
              )
            ],
          ),
        ));
  }
}
