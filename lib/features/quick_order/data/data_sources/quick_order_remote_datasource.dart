import 'package:injectable/injectable.dart';

import '../../../../entities/entities.dart';

abstract class QuickOrderRemoteDataSource {
  Future<List<DishEntity>> getDishes();
}

@LazySingleton(as: QuickOrderRemoteDataSource)
class QuickOrderRemoteDataSourceImpl implements QuickOrderRemoteDataSource {
  @override
  Future<List<DishEntity>> getDishes() {
    throw UnimplementedError();
  }
}
