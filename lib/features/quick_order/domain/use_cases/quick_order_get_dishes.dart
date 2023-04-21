import 'package:erp_ipad/entities/entities.dart';
import 'package:injectable/injectable.dart';

import '../repositories/quick_order_repository.dart';

@injectable
class QuickOrderGetDishes {
  final QuickOrderRepository _repository;

  QuickOrderGetDishes(this._repository);

  Future<List<DishEntity>> call() async {
    return await _repository.getDishes();
  }
}
