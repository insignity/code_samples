import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';

import '/features/checkout_shifts/presentation/pages/checkout_shifts_page.dart';
import '/features/lock/presentation/pages/lock_page.dart';
import '/features/order/ui/pages/order_page.dart';
import '/features/payment/presentation/pages/payment_page.dart';
import '/features/payment/presentation/pages/payment_receipt_page.dart';
import '/features/quick_order/ui/pages/quick_order_page.dart';
import '/features/settings/presentation/pages/settings_page.dart';
import '/features/warehouse/presentation/pages/warehouse_incoming_page.dart';
import '/features/warehouse/presentation/pages/warehouse_product_page.dart';
import '../../entities/entities.dart';
import '../../features/cloud/ui/pages/cloud_page.dart';
import '../../features/local_devices/presentation/pages/local_devices_page.dart';
import '../../features/payment/presentation/pages/payment_cash_page.dart';
import '../../features/point/ui/pages/point_page.dart';
import '../../features/warehouse/presentation/pages/warehouse_documents_page.dart';
import 'builders/dialog_route_builder.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: CloudPage),
    AutoRoute(
      path: 'point',
      name: 'PointRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: LockPage),
        AutoRoute(path: 'point', page: PointPage),
        AutoRoute(path: 'point/:id', page: OrderPage, usesPathAsKey: true),
        AutoRoute(path: 'quick_order', page: QuickOrderPage),
        AutoRoute(path: 'payment', page: PaymentPage),
        AutoRoute(path: 'payment_cash', page: PaymentCashPage),
        AutoRoute(path: 'payment_check', page: PaymentReceiptPage),
        AutoRoute(
          path: 'settings',
          page: EmptyRouterPage,
          name: 'SettingsRouter',
          children: [
            AutoRoute(path: '', page: SettingsPage),
            AutoRoute(path: 'checkout_shifts', page: CheckoutShiftsPage),
            AutoRoute(path: 'local_devices', page: LocalDevicesPage),
            AutoRoute(
              path: 'warehouse_documents',
              page: EmptyRouterPage,
              name: 'WarehouseDocumentsRouter',
              children: [
                AutoRoute(path: "", page: WarehouseDocumentsPage),
                CustomRoute(
                  path: 'incoming_invoices',
                  page: WarehouseIncomingPage,
                  fullMatch: true,
                  customRouteBuilder: AppRouter.customDialogRoute,
                ),
                CustomRoute(
                  path: 'add_product',
                  page: WarehouseProductPage,
                  fullMatch: true,
                  customRouteBuilder: AppRouter.customDialogRoute,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  static Route<T> customDialogRoute<T>(
          BuildContext context, Widget c, CustomPage<T> p) =>
      dialogRouteBuilder(c, p);
}
