import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '/core/utils/configuration.dart';
import '/entities/entities.dart';
import '/features/payment/presentation/widgets/payment_hold_button.dart';
import '../../../../core/components/circle_close_button.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/theming/app_theming.dart';

class PaymentCashPage extends StatefulWidget {
  const PaymentCashPage({Key? key}) : super(key: key);

  @override
  State<PaymentCashPage> createState() => _PaymentCashPageState();
}

class _PaymentCashPageState extends State<PaymentCashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 60,
          top: 50,
          right: 60,
          bottom: 95,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: context.router.pop,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: AppColors.white),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        height: 65,
                        width: 65,
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          color: AppColors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Оплата наличными',
                  style: context.txt.dm! + AppColors.white,
                ),
                const Spacer(),
                const CircleCloseButton(),
              ],
            ),
            Text('Имя кассира', style: context.txt.tl! + AppColors.white),
            const HBox(10),
            Text(
              'К оплате: 5 000 тг из 3 000 тг',
              style: context.txt.ds! + AppColors.white,
            ),
            const HBox(30),
            Expanded(
              child: PaymentHoldButton(
                onFinish: () {
                  context.router.push(
                    PaymentReceiptRoute(
                      order: OrderEntity(
                        dishes: [
                          DishEntity(id: 0, name: 'Smuzi', price: 200),
                          DishEntity(id: 1, name: 'Smuzi1', price: 800),
                          DishEntity(id: 2, name: 'Smuzi2', price: 800),
                        ],
                        orderId: 0,
                        cashierId: 0,
                        totalPrice: 1000,
                      ),
                      employeeName: 'Петя',
                    ),
                  );
                },
              ),
            ),
            const HBox(30),
            Text(
              'После подтверждения будет напечатан чек',
              style: context.txt.bl! + AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
