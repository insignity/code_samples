import 'package:injectable/injectable.dart';

import '../../di/service_locator.dart';
import '../../utils/configuration.dart';
import 'api.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Api get getClient => Api(baseUrl: Constants.path, sessionService: sl());
}
