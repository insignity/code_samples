// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    CloudRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const CloudPage(),
      );
    },
    PointRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    LockRoute.name: (routeData) {
      final args = routeData.argsAs<LockRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: LockPage(
          key: args.key,
          pointId: args.pointId,
        ),
      );
    },
    PointRoute.name: (routeData) {
      final args = routeData.argsAs<PointRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: PointPage(
          key: args.key,
          point: args.point,
        ),
      );
    },
    OrderRoute.name: (routeData) {
      final args = routeData.argsAs<OrderRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: OrderPage(
          key: args.key,
          id: args.id,
          table: args.table,
        ),
      );
    },
    QuickOrderRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const QuickOrderPage(),
      );
    },
    PaymentRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const PaymentPage(),
      );
    },
    PaymentCashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const PaymentCashPage(),
      );
    },
    PaymentReceiptRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentReceiptRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: PaymentReceiptPage(
          key: args.key,
          order: args.order,
          employeeName: args.employeeName,
        ),
      );
    },
    SettingsRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    CheckoutShiftsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const CheckoutShiftsPage(),
      );
    },
    LocalDevicesRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LocalDevicesPage(),
      );
    },
    WarehouseDocumentsRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    WarehouseDocumentsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const WarehouseDocumentsPage(),
      );
    },
    WarehouseIncomingRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const WarehouseIncomingPage(),
        customRouteBuilder: AppRouter.customDialogRoute,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WarehouseProductRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const WarehouseProductPage(),
        customRouteBuilder: AppRouter.customDialogRoute,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CloudRoute.name,
          path: '/',
        ),
        RouteConfig(
          PointRouter.name,
          path: 'point',
          children: [
            RouteConfig(
              LockRoute.name,
              path: '',
              parent: PointRouter.name,
            ),
            RouteConfig(
              PointRoute.name,
              path: 'point',
              parent: PointRouter.name,
            ),
            RouteConfig(
              OrderRoute.name,
              path: 'point/:id',
              parent: PointRouter.name,
              usesPathAsKey: true,
            ),
            RouteConfig(
              QuickOrderRoute.name,
              path: 'quick_order',
              parent: PointRouter.name,
            ),
            RouteConfig(
              PaymentRoute.name,
              path: 'payment',
              parent: PointRouter.name,
            ),
            RouteConfig(
              PaymentCashRoute.name,
              path: 'payment_cash',
              parent: PointRouter.name,
            ),
            RouteConfig(
              PaymentReceiptRoute.name,
              path: 'payment_check',
              parent: PointRouter.name,
            ),
            RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: PointRouter.name,
              children: [
                RouteConfig(
                  SettingsRoute.name,
                  path: '',
                  parent: SettingsRouter.name,
                ),
                RouteConfig(
                  CheckoutShiftsRoute.name,
                  path: 'checkout_shifts',
                  parent: SettingsRouter.name,
                ),
                RouteConfig(
                  LocalDevicesRoute.name,
                  path: 'local_devices',
                  parent: SettingsRouter.name,
                ),
                RouteConfig(
                  WarehouseDocumentsRouter.name,
                  path: 'warehouse_documents',
                  parent: SettingsRouter.name,
                  children: [
                    RouteConfig(
                      WarehouseDocumentsRoute.name,
                      path: '',
                      parent: WarehouseDocumentsRouter.name,
                    ),
                    RouteConfig(
                      WarehouseIncomingRoute.name,
                      path: 'incoming_invoices',
                      parent: WarehouseDocumentsRouter.name,
                      fullMatch: true,
                    ),
                    RouteConfig(
                      WarehouseProductRoute.name,
                      path: 'add_product',
                      parent: WarehouseDocumentsRouter.name,
                      fullMatch: true,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [CloudPage]
class CloudRoute extends PageRouteInfo<void> {
  const CloudRoute()
      : super(
          CloudRoute.name,
          path: '/',
        );

  static const String name = 'CloudRoute';
}

/// generated route for
/// [EmptyRouterPage]
class PointRouter extends PageRouteInfo<void> {
  const PointRouter({List<PageRouteInfo>? children})
      : super(
          PointRouter.name,
          path: 'point',
          initialChildren: children,
        );

  static const String name = 'PointRouter';
}

/// generated route for
/// [LockPage]
class LockRoute extends PageRouteInfo<LockRouteArgs> {
  LockRoute({
    Key? key,
    required int pointId,
  }) : super(
          LockRoute.name,
          path: '',
          args: LockRouteArgs(
            key: key,
            pointId: pointId,
          ),
        );

  static const String name = 'LockRoute';
}

class LockRouteArgs {
  const LockRouteArgs({
    this.key,
    required this.pointId,
  });

  final Key? key;

  final int pointId;

  @override
  String toString() {
    return 'LockRouteArgs{key: $key, pointId: $pointId}';
  }
}

/// generated route for
/// [PointPage]
class PointRoute extends PageRouteInfo<PointRouteArgs> {
  PointRoute({
    Key? key,
    required PointEntity point,
  }) : super(
          PointRoute.name,
          path: 'point',
          args: PointRouteArgs(
            key: key,
            point: point,
          ),
        );

  static const String name = 'PointRoute';
}

class PointRouteArgs {
  const PointRouteArgs({
    this.key,
    required this.point,
  });

  final Key? key;

  final PointEntity point;

  @override
  String toString() {
    return 'PointRouteArgs{key: $key, point: $point}';
  }
}

/// generated route for
/// [OrderPage]
class OrderRoute extends PageRouteInfo<OrderRouteArgs> {
  OrderRoute({
    Key? key,
    required int id,
    required TableEntity table,
  }) : super(
          OrderRoute.name,
          path: 'point/:id',
          args: OrderRouteArgs(
            key: key,
            id: id,
            table: table,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'OrderRoute';
}

class OrderRouteArgs {
  const OrderRouteArgs({
    this.key,
    required this.id,
    required this.table,
  });

  final Key? key;

  final int id;

  final TableEntity table;

  @override
  String toString() {
    return 'OrderRouteArgs{key: $key, id: $id, table: $table}';
  }
}

/// generated route for
/// [QuickOrderPage]
class QuickOrderRoute extends PageRouteInfo<void> {
  const QuickOrderRoute()
      : super(
          QuickOrderRoute.name,
          path: 'quick_order',
        );

  static const String name = 'QuickOrderRoute';
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute()
      : super(
          PaymentRoute.name,
          path: 'payment',
        );

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [PaymentCashPage]
class PaymentCashRoute extends PageRouteInfo<void> {
  const PaymentCashRoute()
      : super(
          PaymentCashRoute.name,
          path: 'payment_cash',
        );

  static const String name = 'PaymentCashRoute';
}

/// generated route for
/// [PaymentReceiptPage]
class PaymentReceiptRoute extends PageRouteInfo<PaymentReceiptRouteArgs> {
  PaymentReceiptRoute({
    Key? key,
    required OrderEntity order,
    required String employeeName,
  }) : super(
          PaymentReceiptRoute.name,
          path: 'payment_check',
          args: PaymentReceiptRouteArgs(
            key: key,
            order: order,
            employeeName: employeeName,
          ),
        );

  static const String name = 'PaymentReceiptRoute';
}

class PaymentReceiptRouteArgs {
  const PaymentReceiptRouteArgs({
    this.key,
    required this.order,
    required this.employeeName,
  });

  final Key? key;

  final OrderEntity order;

  final String employeeName;

  @override
  String toString() {
    return 'PaymentReceiptRouteArgs{key: $key, order: $order, employeeName: $employeeName}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class SettingsRouter extends PageRouteInfo<void> {
  const SettingsRouter({List<PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [CheckoutShiftsPage]
class CheckoutShiftsRoute extends PageRouteInfo<void> {
  const CheckoutShiftsRoute()
      : super(
          CheckoutShiftsRoute.name,
          path: 'checkout_shifts',
        );

  static const String name = 'CheckoutShiftsRoute';
}

/// generated route for
/// [LocalDevicesPage]
class LocalDevicesRoute extends PageRouteInfo<void> {
  const LocalDevicesRoute()
      : super(
          LocalDevicesRoute.name,
          path: 'local_devices',
        );

  static const String name = 'LocalDevicesRoute';
}

/// generated route for
/// [EmptyRouterPage]
class WarehouseDocumentsRouter extends PageRouteInfo<void> {
  const WarehouseDocumentsRouter({List<PageRouteInfo>? children})
      : super(
          WarehouseDocumentsRouter.name,
          path: 'warehouse_documents',
          initialChildren: children,
        );

  static const String name = 'WarehouseDocumentsRouter';
}

/// generated route for
/// [WarehouseDocumentsPage]
class WarehouseDocumentsRoute extends PageRouteInfo<void> {
  const WarehouseDocumentsRoute()
      : super(
          WarehouseDocumentsRoute.name,
          path: '',
        );

  static const String name = 'WarehouseDocumentsRoute';
}

/// generated route for
/// [WarehouseIncomingPage]
class WarehouseIncomingRoute extends PageRouteInfo<void> {
  const WarehouseIncomingRoute()
      : super(
          WarehouseIncomingRoute.name,
          path: 'incoming_invoices',
        );

  static const String name = 'WarehouseIncomingRoute';
}

/// generated route for
/// [WarehouseProductPage]
class WarehouseProductRoute extends PageRouteInfo<void> {
  const WarehouseProductRoute()
      : super(
          WarehouseProductRoute.name,
          path: 'add_product',
        );

  static const String name = 'WarehouseProductRoute';
}
