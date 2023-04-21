import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '../../../utils/configuration.dart';
import '../crud.dart';
import '../database.dart';
import '../db_strings.dart';

@lazySingleton
class WarehouseProductTable extends CRUD {
  late final Database db;

  WarehouseProductTable() {
    DBProvider.db.database.then((value) => db = value);
  }

  static const _table = DBStrings.warehouseProductTable;

  @override
  Future create(model) async {
    logger.i('inserting $model');
    await db.insert(_table, {DBStrings.warehouseProduct: model});
    logger.i('successfully inserted');
  }

  @override
  Future clear() async {
    logger.i('clearing $_table');
    db.delete(_table);
    logger.i('successfully cleared');
  }

  @override
  Future<List<String>?> read() async {
    logger.i('reading $_table');
    try {
      final List<Json> json = await db.query(_table);
      final List<String> result =
          json.map((e) => e[DBStrings.warehouseProduct] as String).toList();
      logger.i('successfully read $_table');
      return result;
    } on StateError {
      logger.i('successfully read and its empty $_table');
      return null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future update(model) async {
    logger.i('updating $model');
    await db.update(_table, model.toJson());
    logger.i('successfully updated');
  }
}
