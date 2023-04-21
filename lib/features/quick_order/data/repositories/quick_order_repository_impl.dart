import 'package:injectable/injectable.dart';

import '/entities/entities.dart';
import '/features/quick_order/data/data_sources/quick_order_local_datasource.dart';
import '/features/quick_order/domain/repositories/quick_order_repository.dart';
import '../data_sources/quick_order_remote_datasource.dart';

@LazySingleton(as: QuickOrderRepository)
class QuickOrderRepositoryImpl implements QuickOrderRepository {
  final QuickOrderLocalDataSource localDataSource;
  final QuickOrderRemoteDataSource remoteDataSource;

  QuickOrderRepositoryImpl(this.localDataSource, this.remoteDataSource);

  @override
  Future<List<DishEntity>> getDishes() {
    return localDataSource.getDishes();
  }
}
