import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Tidak with ChangeNotifier{
  int _tdk= 0;

  int get tdk =>_tdk;
  set tdk(int value){
    _tdk = value;
    notifyListeners();
  }
}