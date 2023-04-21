import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/app_button.dart';
import '../../../../core/components/app_header.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/utils/configuration.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back_ios_new, color: AppColors.black),
          //   onPressed: context.router.pop,
          // ),
          ),
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: AppButton(
                    title: 'Кассовые смены',
                    margin: const EdgeInsets.symmetric(vertical: 84),
                    onPressed: () =>
                        context.router.push(const CheckoutShiftsRoute()),
                  ),
                ),
                const WBox(20),
                Expanded(
                  child: AppButton(
                    title: 'Складские документы',
                    margin: const EdgeInsets.symmetric(vertical: 84),
                    onPressed: () {
                      context.router.push(const WarehouseDocumentsRouter());
                    },
                  ),
                ),
                const WBox(20),
                Expanded(
                  child: AppButton(
                    title: 'Стоп лист',
                    margin: const EdgeInsets.symmetric(vertical: 84),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const HBox(20),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    title: 'Устройства',
                    margin: const EdgeInsets.symmetric(vertical: 84),
                    onPressed: () {},
                  ),
                ),
                const Spacer(flex: 2),
                const WBox(40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
