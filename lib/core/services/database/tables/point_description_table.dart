import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

import '/core/services/database/crud.dart';
import '/core/services/database/db_strings.dart';
import '../../../../features/cloud/domain/entities/cloud_entities.dart';
import '../../../utils/configuration.dart';
import '../database.dart';

///SQLite table for store/get chosen [PointDescriptionEntity]

@lazySingleton
class PointDescriptionTable extends CRUD {
  static const _table = DBStrings.pointDescriptionTable;

  @override
  Future create(point) async {
    logger.i('inserting $point');
    Database db = await DBProvider.db.database;
    await db.insert(_table, point.toJson());
    logger.i('successfully inserted');
  }

  @override
  Future clear() async {
    logger.i('clearing $_table');
    Database db = await DBProvider.db.database;
    db.delete(_table);
    logger.i('successfully cleared');
  }

  @override
  Future<PointDescriptionEntity?> read() async {
    logger.i('reading $_table');
    Database db = await DBProvider.db.database;
    try {
      final Json json = (await db.query(_table)).first;
      final PointDescriptionEntity pointDescriptions =
          PointDescriptionEntity.fromJson(json);
      logger.i('successfully read $_table');
      return pointDescriptions;
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
    Database db = await DBProvider.db.database;
    await db.update(_table, model.toJson());
    logger.i('successfully updated');
  }
}
