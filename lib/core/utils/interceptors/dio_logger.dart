// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';

import '../../services/session/session_service.dart';
import '../configuration.dart';

class DioLogger extends Interceptor {
  final SessionService sessionService;

  DioLogger(this.sessionService);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logger.i(
      "Request:"
      "uri: ${options.uri.toString()}, "
      "data: ${options.data}",
    );
    final pointToken = await sessionService.getCloudToken();
    if (pointToken != null) {
      options.headers['Authorization'] = 'Bearer ${pointToken.text}';
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data is Json) {
      if (response.data['data'] != null) {
        response.data = response.data['data'];
        logger.i(
          "Response: "
          "uri: ${response.realUri.toString()}, "
          "data: ${response.data}",
        );
      }
    }
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final data = err.response?.data;

    if (data is Json && data['error_description'] != null) {
      handler.reject(
        DioError(
          requestOptions: err.requestOptions,
          response: Response(
            requestOptions: err.requestOptions,
            statusCode: err.response?.statusCode ?? 400,
            data: data,
          ),
          type: DioErrorType.response,
          error: err.response,
        ),
      );
      return;
    }

    handler.next(err);
  }
}
