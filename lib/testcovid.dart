import 'package:flutter/material.dart';
import 'package:uas_kapitaselekta/consumer/hasil.dart';
import 'package:uas_kapitaselekta/consumer/tidak.dart';
import 'package:provider/provider.dart';

class TestCovid extends StatefulWidget {
  @override
  _TestCovidState createState() => _TestCovidState();
}

class _TestCovidState extends State<TestCovid> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  bool _value7 = false;
  bool _value8 = false;
  bool _value9 = false;
  bool _value10 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);
  void _value3Changed(bool value) => setState(() => _value3 = value);
  void _value4Changed(bool value) => setState(() => _value4 = value);
  void _value5Changed(bool value) => setState(() => _value5 = value);
  void _value6Changed(bool value) => setState(() => _value6 = value);
  void _value7Changed(bool value) => setState(() => _value7 = value);
  void _value8Changed(bool value) => setState(() => _value8 = value);
  void _value9Changed(bool value) => setState(() => _value9 = value);
  void _value10Changed(bool value) => setState(() => _value10 = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [
        ChangeNotifierProvider<Hasil>(
          create: (context) => Hasil(),
        ),
        ChangeNotifierProvider<Tidak>(
          create: (context) => Tidak(),
        )
      ],
      child: Scaffold(
        floatingActionButton: Consumer<Tidak>(
          builder: (context, tidak, _) => Consumer<Hasil>(
            builder: (context, hasil, _) => FloatingActionButton(
              onPressed: () {
                if (_value10=true) {
                  tidak.tdk += 1;
                  hasil.nilai -= 20;
                }
              },
              child: Icon(Icons.check_circle),
              backgroundColor: Colors.blue,
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Test Covid-19"),
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
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(7),
                    child: Text(
                        "1. Apakah anda terdapat demam dengan suhu di ata 38 derajat Celcius?"),
                  ),
                  CheckboxListTile(
                    value: _value1,
                    onChanged: _value1Changed,
                    title: new Text('Iya'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  CheckboxListTile(
                    value: _value2,
                    onChanged: _value2Changed,
                    title: new Text('Tidak'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    child: Text(
                        "1. Apakah anda terdapat demam dengan suhu di ata 38 derajat Celcius?"),
                  ),
                  CheckboxListTile(
                    value: _value3,
                    onChanged: _value3Changed,
                    title: new Text('Iya'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  CheckboxListTile(
                    value: _value4,
                    onChanged: _value4Changed,
                    title: new Text('Tidak'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    child: Text(
                        "1. Apakah anda terdapat demam dengan suhu di ata 38 derajat Celcius?"),
                  ),
                  CheckboxListTile(
                    value: _value5,
                    onChanged: _value5Changed,
                    title: new Text('Iya'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  CheckboxListTile(
                    value: _value6,
                    onChanged: _value6Changed,
                    title: new Text('Tidak'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    child: Text(
                        "1. Apakah anda terdapat demam dengan suhu di ata 38 derajat Celcius?"),
                  ),
                  CheckboxListTile(
                    value: _value7,
                    onChanged: _value7Changed,
                    title: new Text('Iya'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  Consumer<Tidak>(
                    builder: (context, tidak, _) => CheckboxListTile(
                      value: _value8,
                      onChanged: _value8Changed,
                      title: new Text('Tidak'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Colors.blue,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    child: Text(
                        "1. Apakah anda terdapat demam dengan suhu di ata 38 derajat Celcius?"),
                  ),
                  CheckboxListTile(
                    value: _value9,
                    onChanged: _value9Changed,
                    title: new Text('Iya'),
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Colors.blue,
                  ),
                  Consumer<Tidak>(
                    builder: (context, tidak, _) => CheckboxListTile(
                      value: _value10,
                      onChanged: _value10Changed,
                      title: new Text('Tidak'),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Colors.blue,
                    ),
                  ),
                  Consumer<Hasil>(
                      builder: (context, hasil, _) =>
                          Text(hasil.nilai.toString()))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
