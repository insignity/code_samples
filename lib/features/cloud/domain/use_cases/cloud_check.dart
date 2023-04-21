import 'package:dartz/dartz.dart';
import 'package:erp_ipad/core/failure.dart';
import 'package:erp_ipad/core/use_case.dart';
import 'package:injectable/injectable.dart';

import '../repository/cloud_repository.dart';

@lazySingleton
class CloudCheck extends UseCase<bool, String> {
  final CloudRepository cloudRepository;

  CloudCheck(this.cloudRepository);

  @override
  Future<Either<Failure, bool>> call(String params) async {
    return await cloudRepository.check(params);
  }
}
