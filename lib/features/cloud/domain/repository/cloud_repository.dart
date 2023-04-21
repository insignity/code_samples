import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../entities/cloud_entities.dart';

abstract class CloudRepository {
  Future<Either<Failure, LoginEntity>> login({
    required String cloud,
    required String email,
    required String password,
  });

  Future<Either<Failure, bool>> check(String cloud);

  Future<Either<Failure, PointDescriptionEntity>> getPoint();

  Future<void> savePoint(PointDescriptionEntity point);
}
