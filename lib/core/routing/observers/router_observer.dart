import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/configuration.dart';

class RouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    if (previousRoute != null) {
      logger
          .i("push ${previousRoute.settings.name} >>  ${route.settings.name}");
    } else {
      logger.i("push ${route.settings.name}");
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.i('pop ${route.settings.name} prev ${previousRoute?.settings.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.i('change tab to ${route.name} from ${previousRoute.name}');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    logger.i('replace ${newRoute?.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.i('init tab ${route.name}');
  }
}
