import 'package:injectable/injectable.dart';

import '../../../../core/services/api/api.dart';
import '../../../../core/services/session/session_service.dart';

abstract class PointRemoteDataSource {}

@LazySingleton(as: PointRemoteDataSource)
class PointRemoteDataSourceImpl implements PointRemoteDataSource {
  final Api client;
  final SessionService sessionService;

  PointRemoteDataSourceImpl(this.client, this.sessionService);
}
