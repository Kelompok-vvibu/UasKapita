class DataHasil {
  int _id;
  String _dbHasil;

  DataHasil(this._dbHasil);

  DataHasil.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._dbHasil = map['dbHasil'];
  }

  int get id => _id;
  // ignore: unnecessary_getters_setters
  String get dbHasil => _dbHasil;

  // ignore: unnecessary_getters_setters
  set dbHasil(String value) {
    _dbHasil = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['dbHasil'] = dbHasil;
    return map;
  }
}
