import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failure.dart';
import '../services/network_info.dart';

@lazySingleton
class ConnectionChecker {
  final NetworkInfo networkInfo;

  ConnectionChecker(this.networkInfo);

  Future<Either<Failure, T>> wrap<T>(Future<Either<Failure, T>> right) async {
    final hasConnection = await networkInfo.isConnected;
    if (hasConnection) {
      return await right;
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }

  Future<Either<Failure, T>> wrapFunction<T>(
    Future<Either<Failure, T>> Function() function,
  ) async {
    final hasConnection = await networkInfo.isConnected;
    if (hasConnection) {
      return await function();
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }
}
