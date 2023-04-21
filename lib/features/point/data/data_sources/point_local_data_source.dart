import 'package:injectable/injectable.dart';

abstract class PointLocalDataSource {}

@LazySingleton(as: PointLocalDataSource)
class CloudLocalDataSourceImpl implements PointLocalDataSource {
  CloudLocalDataSourceImpl();
}
