import 'package:erp_ipad/entities/entities.dart';

abstract class QuickOrderRepository {
  Future<List<DishEntity>> getDishes();
}
