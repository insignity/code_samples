import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../entities/entities.dart';
import '../../../features/cloud/domain/entities/cloud_entities.dart';
import '../../utils/interceptors/dio_logger.dart';
import '../session/session_service.dart';

part 'api.g.dart';

class Api extends __Api {
  final SessionService sessionService;

  Api({required this.sessionService, required String baseUrl})
      : super(
            Dio()
              ..interceptors.addAll([
                DioLogger(sessionService),
              ]),
            baseUrl: baseUrl);
}

@RestApi()
abstract class _Api {
  @POST('/api/v1/merchants/{cloud}/login')
  Future<LoginEntity> login({
    @Path('cloud') required String cloud,
    @Body() required Map<String, dynamic> body,
  });

  @POST('/api/v1/merchants/check_cloud')
  Future<void> checkCloud({@Query('cloud') required String cloud});

  @GET('/api/v1/merchants/{cloud}/select_a_point')
  Future<PointEntity> selectAPoint({
    @Path('cloud') required String cloud,
    @Query('point_id') required int id,
  });
}
