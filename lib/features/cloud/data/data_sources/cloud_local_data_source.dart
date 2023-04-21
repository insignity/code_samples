import 'package:injectable/injectable.dart';

import '../../../../core/services/database/tables/point_description_table.dart';
import '../../domain/entities/cloud_entities.dart';

abstract class CloudLocalDataSource {
  Future savePoint(PointDescriptionEntity points);

  Future<PointDescriptionEntity?> getPoint();

  Future clear();
}

@LazySingleton(as: CloudLocalDataSource)
class CloudLocalDataSourceImpl implements CloudLocalDataSource {
  final PointDescriptionTable table;

  CloudLocalDataSourceImpl(this.table);

  @override
  Future<PointDescriptionEntity?> getPoint() {
    return table.read();
  }

  @override
  Future savePoint(PointDescriptionEntity point) async {
    await table.clear();
    await table.create(point);
  }

  @override
  Future clear() async {
    await table.clear();
  }
}
