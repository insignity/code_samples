import 'package:dartz/dartz.dart';
import 'package:erp_ipad/core/failure.dart';
import 'package:erp_ipad/core/use_case.dart';
import 'package:injectable/injectable.dart';

import '../entities/cloud_entities.dart';
import '../repository/cloud_repository.dart';

@lazySingleton
class CloudLogin extends UseCase<LoginEntity, CloudLoginParams> {
  final CloudRepository cloudRepository;

  CloudLogin(this.cloudRepository);

  @override
  Future<Either<Failure, LoginEntity>> call(params) async {
    return await cloudRepository.login(
      cloud: params.cloud,
      email: params.email,
      password: params.password,
    );
  }
}

class CloudLoginParams {
  final String cloud;
  final String email;
  final String password;

  const CloudLoginParams({
    required this.cloud,
    required this.password,
    required this.email,
  });
}
