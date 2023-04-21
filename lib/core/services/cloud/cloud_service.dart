import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../entities/entities.dart';
import '../../../features/cloud/domain/entities/cloud_entities.dart';
import '../../utils/configuration.dart';
import '../api/api.dart';
import '../database/tables/point_description_table.dart';
import '../session/session_service.dart';

@lazySingleton
class CloudService {
  final PointDescriptionTable table;
  final SessionService sessionService;
  final Api api;

  CloudService({
    required this.table,
    required this.sessionService,
    required this.api,
  });

  Future<String?> get name => sessionService.getCloudName();

  Future<void> setName(String name) => sessionService.setCloudName(name);

  ///login and fetch list of [PointDescriptionEntity]
  Future<List<PointDescriptionEntity>> login({
    required String email,
    required String password,
  }) async {
    final cloudName = await name;
    if (cloudName != null) {
      try {
        final response = await api.login(cloud: cloudName, body: {
          "email": email,
          "password": password
        }).catchError((Object object) {
          if (object.runtimeType is DioError) {
            final res = (object as DioError).response;
            logger.e("Error: ${res?.statusCode} -> ${res?.statusMessage}");
          } else {
            throw (object.toString());
          }
        });

        await sessionService.setCloudToken(
          CloudToken(text: response.result.accessToken),
        );

        return response.points;
      } catch (e) {
        rethrow;
      }
    } else {
      throw Exception("There isn't cloud name");
    }
  }

  Future<PointDescriptionEntity?> get point => table.read();

  Future<void> savePoint(PointDescriptionEntity point) async {
    await table.clear();
    await table.create(point);
  }
}
