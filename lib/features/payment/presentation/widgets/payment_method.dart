import 'package:flutter/material.dart';

import '../../../../core/theming/app_theming.dart';
import '../../../../core/utils/configuration.dart';

class PaymentMethod extends StatefulWidget {
  final VoidCallback? onPressedCash;
  final VoidCallback? onPressedDebit;

  const PaymentMethod({Key? key, this.onPressedCash, this.onPressedDebit})
      : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: AppCorners.r8.border,
        color: AppColors.background,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: widget.onPressedCash,
            child: Opacity(
              opacity: widget.onPressedCash != null ? 1 : 0.45,
              child: Container(
                color: AppColors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: Image.asset(
                        AppImages.cash,
                        height: 200,
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Оплата\nналичными",
                        style: context.txt.ds,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const WBox(10),
          GestureDetector(
            onTap: widget.onPressedDebit,
            child: Opacity(
              opacity: widget.onPressedDebit != null ? 1 : 0.45,
              child: Container(
                color: AppColors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: Image.asset(
                        AppImages.debitCard,
                        height: 200,
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Банковская\nкарта",
                        style: context.txt.ds,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
