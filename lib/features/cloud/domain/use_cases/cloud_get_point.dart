import 'package:dartz/dartz.dart';
import 'package:erp_ipad/core/failure.dart';
import 'package:erp_ipad/core/use_case.dart';
import 'package:erp_ipad/features/cloud/domain/entities/cloud_entities.dart';
import 'package:injectable/injectable.dart';

import '../repository/cloud_repository.dart';

@lazySingleton
class CloudGetPoint extends UseCaseZeroParams<PointDescriptionEntity> {
  final CloudRepository cloudRepository;

  CloudGetPoint(this.cloudRepository);

  @override
  Future<Either<Failure, PointDescriptionEntity>> call() async {
    return await cloudRepository.getPoint();
  }
}
