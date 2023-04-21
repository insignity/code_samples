import 'package:injectable/injectable.dart';

import '../../../../core/services/network_info.dart';
import '../../domain/repositories/point_repository.dart';
import '../data_sources/point_local_data_source.dart';
import '../data_sources/point_remote_data_source.dart';

@LazySingleton(as: PointRepository)
class PointRepositoryImpl implements PointRepository {
  final NetworkInfo networkInfo;
  final PointRemoteDataSource pointRemoteDataSource;
  final PointLocalDataSource pointLocalDataSource;

  PointRepositoryImpl(
    this.pointRemoteDataSource,
    this.pointLocalDataSource,
    this.networkInfo,
  );
}
