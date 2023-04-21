import 'package:flutter/material.dart';

import '/features/payment/presentation/widgets/payment_method.dart';
import '../../../../core/components/circle_close_button.dart';
import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';
import '../widgets/payment_keyboard.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController controller = TextEditingController();

  String get currency => Constants.currency;

  @override
  void initState() {
    controller.addListener(_onTextChanged);
    super.initState();
  }

  void _onTextChanged() {
    if (!controller.text.endsWith(' $currency')) {
      String text = controller.text.replaceAll(RegExp(' $currency'), '');
      controller.text = '$text $currency';
    }
  }

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
                SizedBox(width: 80, height: 80, child: CircleAvatar()),
                WBox(25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Айро', style: context.txt.tl! + AppColors.white),
                    Text('Гость', style: context.txt.bm! + AppColors.white),
                    Text(
                      'Сумма 3 000 тг',
                      style: context.txt.hs! + AppColors.white,
                    ),
                  ],
                ),
                const Spacer(),
                const CircleCloseButton()
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          width: 345,
                          child: TextField(
                            controller: controller,
                            decoration: const InputDecoration(
                              fillColor: Colors.transparent,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                            style: context.txt.ds! + AppColors.white,
                          ),
                        ),
                        // const Divider(color: AppColors.white),
                        Text(
                          'К оплате: 5 000 тг из 3 000 тг',
                          style: context.txt.bl! + AppColors.white,
                        ),
                        Text(
                          'Сдача: 2 000 тг',
                          style: context.txt.bl! + AppColors.white,
                        ),
                        PaymentKeyboard(
                          onPressedOne: () => onPressedKeyboard('1'),
                          onPressedTwo: () => onPressedKeyboard('2'),
                          onPressedThree: () => onPressedKeyboard('3'),
                          onPressedFour: () => onPressedKeyboard('4'),
                          onPressedFive: () => onPressedKeyboard('5'),
                          onPressedSix: () => onPressedKeyboard('6'),
                          onPressedSeven: () => onPressedKeyboard('7'),
                          onPressedEight: () => onPressedKeyboard('8'),
                          onPressedNine: () => onPressedKeyboard('9'),
                          onPressedZero: () => onPressedKeyboard('0'),
                          onPressedDot: () => onPressedKeyboard('.'),
                          onPressedDelete: onPressedDelete,
                        ),
                      ],
                    ),
                  ),
                  PaymentMethod(
                    onPressedCash: () {},
                    onPressedDebit: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedKeyboard(String text) {
    if (text == '0 currency') {
      if (controller.text.isEmpty) {
        controller.text = '0';
      } else if (controller.text == '0 currency') {
      } else {
        controller.text += '0';
      }
    } else if (text == '.') {
      if (controller.text.isEmpty ||
          controller.text == Constants.currency ||
          controller.text == ' $currency') {
        controller.text = '0.';
      } else if (!controller.text.contains('.')) {
        controller.text += '.';
      }
    } else if (controller.text == '0 $currency') {
      controller.text = text;
    } else {
      controller.text += text;
    }
    setState(() {});
  }

  void onPressedDelete() {
    if (controller.text.length - currency.length - 2 > -1) {
      controller.text = controller.text
          .substring(0, controller.text.length - currency.length - 2);
    }
    setState(() {});
  }
}
