import 'package:dartz/dartz.dart';
import 'package:erp_ipad/core/failure.dart';
import 'package:erp_ipad/features/cloud/domain/entities/cloud_entities.dart';
import 'package:erp_ipad/features/cloud/domain/repository/cloud_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/components/connection_checker.dart';
import '../data_sources/cloud_local_data_source.dart';
import '../data_sources/cloud_remote_data_source.dart';

@LazySingleton(as: CloudRepository)
class CloudRepositoryImpl implements CloudRepository {
  final ConnectionChecker checker;
  final CloudRemoteDataSource cloudRemoteDataSource;
  final CloudLocalDataSource cloudLocalDataSource;

  CloudRepositoryImpl(
    this.cloudRemoteDataSource,
    this.cloudLocalDataSource,
    this.checker,
  );

  @override
  Future<Either<Failure, LoginEntity>> login({
    required String cloud,
    required String email,
    required String password,
  }) async {
    return await checker.wrap(cloudRemoteDataSource.login(
      cloud: cloud,
      email: email,
      password: password,
    ));
  }

  @override
  Future<Either<Failure, bool>> check(String name) {
    return checker.wrap(cloudRemoteDataSource.check(name));
  }

  @override
  Future<Either<Failure, PointDescriptionEntity>> getPoint() async {
    final response = await cloudLocalDataSource.getPoint();
    if (response == null) {
      return Left(EmptyOrNullFailure());
    } else {
      return Right(response);
    }
  }

  @override
  Future<void> savePoint(PointDescriptionEntity point) async {
    await cloudLocalDataSource.savePoint(point);
  }
}
