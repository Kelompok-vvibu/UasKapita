import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Hasil with ChangeNotifier{
  int _nilai= 100;

  int get nilai =>_nilai;
  set nilai(int value){
    _nilai = value;
    notifyListeners();
  }
}