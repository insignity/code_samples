import 'package:erp_ipad/features/cloud/domain/entities/cloud_entities.dart';
import 'package:injectable/injectable.dart';

import '../repository/cloud_repository.dart';

@lazySingleton
class CloudSavePoint {
  final CloudRepository cloudRepository;

  CloudSavePoint(this.cloudRepository);

  Future<void> call(PointDescriptionEntity point) =>
      cloudRepository.savePoint(point);
}
