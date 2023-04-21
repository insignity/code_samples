import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'db_strings.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String dir = await getDatabasesPath();
    String path = join(dir, DBStrings.databaseName);
    return await openDatabase(
      path,
      version: DBStrings.databaseVersion,
      onCreate: _onCreateDB,
      onOpen: (db) => _onCreateDB(db, DBStrings.databaseVersion),
    );
  }

  _onCreateDB(Database db, int version) async {
    await db.execute('''CREATE TABLE IF NOT EXISTS ${DBStrings.employeeTable}(
          ${DBStrings.id} INTEGER, 
          ${DBStrings.employeeName} TEXT,
          ${DBStrings.employeeSurname} TEXT,
          ${DBStrings.employeePosition} TEXT,
          ${DBStrings.employeeCode} TEXT
    )''');

    await db.execute(
        '''CREATE TABLE IF NOT EXISTS ${DBStrings.pointDescriptionTable}(
          ${DBStrings.id} INTEGER, 
          ${DBStrings.pointDescriptionName} TEXT,
          ${DBStrings.pointDescriptionCountry} TEXT,
          ${DBStrings.pointDescriptionCity} TEXT,
          ${DBStrings.pointDescriptionAdress} TEXT
    )''');

    await db.execute(
        '''CREATE TABLE IF NOT EXISTS ${DBStrings.warehouseProductTable}(
          ${DBStrings.id} INTEGER, 
          ${DBStrings.warehouseProduct} TEXT
    )''');
  }
}
