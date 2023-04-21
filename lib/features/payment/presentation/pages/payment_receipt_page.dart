import 'package:flutter/material.dart';

import '/core/utils/configuration.dart';
import '../../../../core/components/circle_close_button.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../entities/entities.dart';

class PaymentReceiptPage extends StatefulWidget {
  final OrderEntity order;
  final String employeeName;

  const PaymentReceiptPage({
    Key? key,
    required this.order,
    required this.employeeName,
  }) : super(key: key);

  @override
  State<PaymentReceiptPage> createState() => _PaymentReceiptPageState();
}

class _PaymentReceiptPageState extends State<PaymentReceiptPage> {
  List<DishEntity> get items => widget.order.dishes;

  String get totalPrice => widget.order.totalPrice.toInt().toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 100),
                  Text(
                    'Печать чеков',
                    style: context.txt.dm! + AppColors.white,
                    textAlign: TextAlign.center,
                  ),
                  const CircleCloseButton(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 550),
                margin: const EdgeInsets.only(
                  bottom: 95,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const HBox(50),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [AppShadows.shadow],
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text('Название устройства',
                                  style: context.txt.tl),
                              // todo
                              const HBox(10),
                              Text(widget.employeeName, style: context.txt.tm),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                color: AppColors.green,
                                child: Text(
                                  'Чек распечатан',
                                  textAlign: TextAlign.center,
                                  style: context.txt.tm! + AppColors.white,
                                ),
                              ),
                              for (int i = 0; i < items.length; i++)
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 15),
                                  child: Row(
                                    children: [
                                      Text("${i + 1}", style: context.txt.tm),
                                      const WBox(10),
                                      Text(items[i].name,
                                          style: context.txt.bm),
                                      const Spacer(),
                                      Text(totalPrice, style: context.txt.tm),
                                    ],
                                  ),
                                ),
                              const Divider(
                                  color: AppColors.firstText, height: 10),
                              const HBox(15),
                              Text(
                                'Итог: $totalPrice тг',
                                style: context.txt.tl,
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const HBox(60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Сдача: 0 тг',
                          style: context.txt.ds! + AppColors.white,
                        ),
                        Text(
                          'Итог: ${widget.order.totalPrice.toInt()} тг',
                          style: context.txt.ds! + AppColors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
