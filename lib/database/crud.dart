import 'package:sqflite/sqlite_api.dart';
import 'class.dart';
import 'aksesdb.dart';

class CRUD {
  AccesDatabase dbHelper = new AccesDatabase();

  Future<int> insert(DataHasil todo) async {
    Database db = await dbHelper.initDb();
    int count = await db.insert('hasilan', todo.toMap());
    return count;
  }

  Future<int> update(DataHasil todo) async {
    Database db = await dbHelper.initDb();
    int count = await db
        .update('hasilan', todo.toMap(), where: 'id=?', whereArgs: [todo.id]);
    return count;
  }

  Future<int> delete(DataHasil todo) async {
    Database db = await dbHelper.initDb();
    int count = await db.delete('hasilan', where: 'id=?', whereArgs: [todo.id]);
    return count;
  }

  Future<List<DataHasil>> getHasilanList() async {
    Database db = await dbHelper.initDb();
    List<Map<String, dynamic>> mapList =
        await db.query('hasilan', orderBy: 'dbHasil');
    int count = mapList.length;
    List<DataHasil> hasilanList = List<DataHasil>();
    for (int i = 0; i < count; i++) {
      hasilanList.add(DataHasil.fromMap(mapList[i]));
    }
    return hasilanList;
  }
}
